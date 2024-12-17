# -*- coding: utf-8 -*-

#%%
# import various libraries necessary to run your Python code
import time   # time related library
import numpy as np
import cv2
import threading
import matplotlib.pyplot as plt
import keyboard
import sys
ok_sdk_loc = "C:\\Program Files\\Opal Kelly\\FrontPanelUSB\\API\\Python\\x64"
ok_dll_loc = "C:\\Program Files\\Opal Kelly\\FrontPanelUSB\\API\\lib\\x64"

import global_val
#%% wire addresses
spi_start = 0x00 # bit 3 for I2C, bit 2 for PWM, bit 1 for SPI, bit 0 for IMG_FSM
spi_mode = 0x01
spi_data_in = 0x02
spi_slave_reg = 0x03
spi_data_out = 0x20

i2c_start = 0x0C
i2c_mode = 0x04
i2c_num_bytes = 0x05
i2c_data_in = 0x06
i2c_slave_address = 0x07
i2c_slave_reg = 0x08
i2c_data_out = 0x21

pwm_start = 0x0D
pwm_en = 0x09
pwm_dir = 0x0A
pwm_pulses = 0x0B
ready = 0x22 # {spi_ready, i2c_ready}

img_start = 0x0E
btpipe = 0xA0 # For frames to PC
#%% 
# LSM303 Reg
accel_add = 0x19 # 7'b001_1001
mag_add = 0x1E # 7'b001_1110

ctrl_reg1_a = 0x20 # 8'b0010_0000
ctrl_reg4_a = 0x23 # 8'b0010_0011
status_reg_a = 0x27 # 8'b0010_0111
accel_reg_x = 0xA8 # 8'b0010_1000 A8 is for MULTIPLE Byte, 28 is for Single

cra_reg_m = 0x00 # 8'b0000_0000
crb_reg_m = 0x01 # 8'b0000_0001
mr_reg_m = 0x02 # 8'b0000_0010
sr_reg_m = 0x09 # 8'b0000_1001
mag_reg_x = 0x03 # 8'b0000_0011

ira_reg_m = 0x0A
irb_reg_m = 0x0B
irc_reg_m = 0x0C
#%%
frame_cnt = 0
true_frame_cnt = 0
plot_pixel = []
x_accel_std = []
y_accel_std = []
z_accel_std = []
x_mag_std = []
y_mag_std = []
z_mag_std = []

reg_frame = 1 # hardcoded to 1 in Verilog
image_data = np.zeros(reg_frame*480*640, dtype=np.uint8)
frame_lock = threading.Lock()
running = True
new_frame_captured = False
frame_displayed = False

bg_subtractor = cv2.createBackgroundSubtractorMOG2()
# Functions
def twos(value, bit_width):
    if value & (1 << (bit_width-1)):
        value = value - (1 << bit_width)
    return value

def swap_lsb_msb(value):
    byte_length = (value.bit_length() + 7) // 8  # Calculate the number of bytes
    if byte_length < 2:
        return value  # No need to swap if there's only one byte

    # Create masks for LSB and MSB
    lsb_mask = 0xFF
    msb_mask = 0xFF << ((byte_length - 1) * 8)
    
    lsb = value & lsb_mask  # Get the least significant byte
    msb = value & msb_mask  # Get the most significant byte

    # Clear the original LSB and MSB
    value &= ~lsb_mask  # Clear LSB
    value &= ~msb_mask  # Clear MSB
    
    # Swap the LSB and MSB
    value |= lsb << ((byte_length - 1) * 8)  # Set LSB in MSB position
    value |= msb >> ((byte_length - 1) * 8)  # Set MSB in LSB position
    
    return value

def exposure_time(time):
    clk_in_per = 1 / 25e6
    reg58 = 44
    exp_time = np.round(((time / clk_in_per) - (reg58 * 48) - 133) / 325 + 1)
    exp_time = int(exp_time) & 0xFFFFFF  # Mask to 3 bytes

    # Extract each byte
    byte1 = (exp_time >> 16) & 0xFF  # Most significant byte
    byte2 = (exp_time >> 8) & 0xFF   # Middle byte
    byte3 = exp_time & 0xFF          # Least significant byte

    return byte1, byte2, byte3

def performI2C(mode, num_of_bytes, data_in, slave_add, slave_reg):
    global_val.dev.SetWireInValue(i2c_start, 0x01) # Start Button must set high and set low after
    global_val.dev.SetWireInValue(i2c_mode, mode) # mode read 1 write 0
    global_val.dev.SetWireInValue(i2c_num_bytes, num_of_bytes) # num_of_bytes
    global_val.dev.SetWireInValue(i2c_data_in, data_in) # data_in
    global_val.dev.SetWireInValue(i2c_slave_address, slave_add) # slave_add
    global_val.dev.SetWireInValue(i2c_slave_reg, slave_reg) # slave_reg
    global_val.dev.UpdateWireIns()
    
    time.sleep(.001)   # wait .1 secs
    global_val.dev.SetWireInValue(i2c_start, 0) 
    global_val.dev.UpdateWireIns()
    while True:
        global_val.dev.UpdateWireOuts()
        if global_val.dev.GetWireOutValue(ready) & 0x01 == 1:
            if mode:
                global_val.dev.UpdateWireOuts()
                return global_val.dev.GetWireOutValue(i2c_data_out)
            else:
                return 1
    return -1

# duty out of 10 Ex: 1 -> 10% etc.
# direction 0 -> Clockwise 1-> Counter ClockWise
def performMotor(duty, direction, num_of_pulses):
    global_val.dev.SetWireInValue(pwm_start, 0x01) # Start Button must set high and set low after
    global_val.dev.SetWireInValue(pwm_en, duty)
    global_val.dev.SetWireInValue(pwm_dir, direction)
    global_val.dev.SetWireInValue(pwm_pulses, num_of_pulses)
    global_val.dev.UpdateWireIns()
    
    time.sleep(.001)   # wait .1 secs
    global_val.dev.SetWireInValue(pwm_start, 0) 
    global_val.dev.UpdateWireIns()
    return 1

def performSPI(mode, data_in, slave_reg):
    global_val.dev.SetWireInValue(spi_start, 0x01) # Start Button must set high and set low after
    global_val.dev.SetWireInValue(spi_mode, mode) # mode read 0 write 1
    global_val.dev.SetWireInValue(spi_data_in, data_in) # data_in
    global_val.dev.SetWireInValue(spi_slave_reg, slave_reg) # slave_reg
    global_val.dev.UpdateWireIns()
    
    time.sleep(.1)   # wait .1 secs
    global_val.dev.SetWireInValue(spi_start, 0) 
    global_val.dev.UpdateWireIns()
    while True:
        global_val.dev.UpdateWireOuts()
        if global_val.dev.GetWireOutValue(ready) & 0x02 == 2:
            if not mode:
                global_val.dev.UpdateWireOuts()
                return global_val.dev.GetWireOutValue(spi_data_out)
            else:
                return 1
    return -1

def capture_frames():
    global image_data, running, new_frame_captured, frame_cnt, true_frame_cnt
    while running:
        with frame_lock:
            start = time.time()
            global_val.dev.SetWireInValue(img_start, 0x01)
            global_val.dev.UpdateWireIns()
        
            global_val.dev.SetWireInValue(img_start, 0)     
            global_val.dev.UpdateWireIns()
            
            global_val.dev.UpdateWireOuts()
            if global_val.dev.GetWireOutValue(0x23) == 0:
                global_val.dev.ReadFromBlockPipeOut(btpipe, 1024, image_data)
                new_frame_captured = True
                true_frame_cnt += 1
                plot_pixel.append(image_data[100*480 + 320]) # random pixel
            else:
                frame_cnt += 1

            # print(image_data.reshape((reg_frame,480,640)))
            end = time.time()
            print(f"Total Transfer Time: {end - start:.4f} seconds")
                
        time.sleep(0.01)  # Simulate a delay in capturing
    cv2.destroyAllWindows()   
    
def track_and_display_obj(obj_keypoints, obj_descriptors):
    global image_data, running, new_frame_captured, bg_subtractor, frame_displayed
    orb = cv2.ORB_create()
    bf = cv2.BFMatcher()
    cv2.namedWindow('Video', cv2.WINDOW_NORMAL)
    
    while running:
        with frame_lock:
            if new_frame_captured:
                frame = image_data.reshape((480,640))
                mask = bg_subtractor.apply(frame)
                # print("Calculating Frame Keypoints")
                frame_keypoints, frame_descriptors = orb.detectAndCompute(frame, mask)
                
                if frame_descriptors is None or obj_descriptors is None:
                    print("Descriptors are None. Skipping frame.")
                    continue
                
                matches = bf.knnMatch(obj_descriptors,frame_descriptors, k = 2)
                
                new_frame_captured = False  # Reset the flag
                frame_displayed = True 
                good_matches = []
                
                for match_pair in matches:
                    if len(match_pair) == 2:  # Ensure there are two matches to unpack
                        m, n = match_pair
                        if m.distance < 0.75 * n.distance:
                            good_matches.append(m)

                # Calculate centroids of the matched keypoints
                if good_matches:
                    obj_points = np.float32([obj_keypoints[m.queryIdx].pt for m in good_matches])
                    frame_points = np.float32([frame_keypoints[m.trainIdx].pt for m in good_matches])

                    # Calculate centroids
                    obj_centroid = np.mean(obj_points, axis=0)
                    frame_centroid = np.mean(frame_points, axis=0)

                    mask = cv2.drawKeypoints(mask, [frame_keypoints[m.trainIdx] for m in good_matches], None, color=(0, 0, 255), flags=cv2.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS)
                    mask = cv2.drawKeypoints(mask, [obj_keypoints[m.queryIdx] for m in good_matches], None, color=(255, 0, 0), flags=cv2.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS)
                    # Determine movement direction
                    movement_x = frame_centroid[0] - obj_centroid[0]
                    
                    if movement_x < -50:
                        print(f"Moved Left in Frame, Moved Right IRL: {movement_x}")
                        performMotor(duty = 5, direction = 1, num_of_pulses= 20) # direction 0 -> Clockwise 1-> Counter ClockWise
                    elif movement_x > 50:
                        print(f"Moved Right, in Frame, Moved Left IRL: {movement_x}")
                        performMotor(duty= 5, direction= 0, num_of_pulses= 20)
                    else:
                        print("No Horizontal Movement")

                    cv2.imshow('Video', mask)
                    
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break                
    cv2.destroyAllWindows()                                   
    return None

def capture_obj_img():
    global bg_subtractor
    orb = cv2.ORB_create()
    obj_data = np.zeros(480 * 640, dtype=np.uint8)  # Initialize with proper shape and type
    back_data = np.zeros(480 * 640, dtype=np.uint8)
    q = False
    b = False
    print("Position Obj in Imager (Press B to take Background, Press Q to Take Object)")
    while True:
        if keyboard.is_pressed('b') and b == False:  # Press 'q' to capture
            try:
                b = True
                print("Waiting for Background")
                global_val.dev.SetWireInValue(img_start, 0x01)
                global_val.dev.UpdateWireIns()
            
                global_val.dev.SetWireInValue(img_start, 0)     
                global_val.dev.UpdateWireIns()
               
                status = global_val.dev.ReadFromBlockPipeOut(btpipe, 1024, back_data)
                if status <= 0:  # Check if the read was successful
                    print("Failed to capture frame.")
                    global_val.dev.Close()
                    sys.exit()
                    continue
                print("Background Frame Captured:")
                back_data = back_data.reshape((480,640))
                
            except Exception as e:
                print(f"An error occurred: {e}")
                break
            
        if keyboard.is_pressed('q') and q == False:  # Press 'q' to capture
            try:
                q = True
                print("Waiting for Object")
                global_val.dev.SetWireInValue(img_start, 0x01)
                global_val.dev.UpdateWireIns()
                global_val.dev.SetWireInValue(img_start, 0)     
                global_val.dev.UpdateWireIns()
                
                status = global_val.dev.ReadFromBlockPipeOut(btpipe, 1024, obj_data)
                
                if status <= 0:  # Check if the read was successful
                    print("Failed to capture frame.")
                    global_val.dev.Close()
                    sys.exit()
                    continue
    
                print("Object Frame Captured:")
                obj_data = obj_data.reshape((480,640))
    
            except Exception as e:
                print(f"An error occurred: {e}")
                break
            
        if q and b:
            diff = cv2.absdiff(back_data, obj_data)
            _, binary_mask = cv2.threshold(diff, 30, 255, cv2.THRESH_BINARY)
            
            bg_subtractor.apply(back_data, learningRate=0)  # Initializes the model with the initial frame
            bg_subtractor.apply(obj_data)  # Apply the initial mask
    
            plt.title("Mask")
            plt.imshow(binary_mask, cmap='gray')
            plt.show()  # Ensure the image is displayed
            
            keypoints_1, descriptors_1 = orb.detectAndCompute(obj_data, binary_mask)
            key_img = cv2.drawKeypoints(obj_data, keypoints_1, None)
            plt.title("Object Data with Keypoints and Mask")
            plt.imshow(key_img, cmap='gray')
            plt.show()  # Ensure the image is displayed
            return keypoints_1, descriptors_1
    
def display_LSM303_readings():
    global running, frame_displayed
    while running:
        with frame_lock:
            if frame_displayed:
                frame_displayed = False
                x_accel_reading = []
                y_accel_reading = []
                z_accel_reading = []
                x_mag_reading = []
                y_mag_reading = []
                z_mag_reading = []
                
                for j in range(3):
                    x_accel = -1
                    y_accel = -1
                    z_accel = -1
                    start = time.time()
                    for i in range(3):
                        data_out = performI2C( 1, 2, 0, accel_add, accel_reg_x + i*2)
                        if i == 0:
                            x_accel = swap_lsb_msb(data_out) 
                        elif i == 1:
                            y_accel = swap_lsb_msb(data_out)
                        elif i == 2:
                            z_accel = swap_lsb_msb(data_out)
                    end = time.time()
                    x_accel = np.abs(twos(x_accel, 16) / 16000)
                    y_accel = np.abs(twos(y_accel, 16) / 16000)
                    z_accel = np.abs(twos(z_accel, 16) / 16000)
                    print(f"Accelerometer readings in {end - start}s:")
                    print(f"X: {x_accel}, Y: {y_accel}, Z: {z_accel}")
                    x_accel_reading.append(x_accel)
                    y_accel_reading.append(y_accel)
                    z_accel_reading.append(z_accel)
                    
                    x_mag = -1
                    y_mag = -1
                    z_mag = -1
                    start = time.time()
                    for i in range(3):
                        data_out = performI2C(1, 2, 0, mag_add, mag_reg_x + i*2)
                        if i == 0:
                            x_mag = data_out 
                        elif i == 1:
                            z_mag = data_out 
                        elif i == 2:
                            y_mag = data_out 
                    end = time.time()
                    x_mag = twos(x_mag, 16)
                    y_mag = twos(y_mag, 16)
                    z_mag = twos(z_mag, 16)
                    print(f"Magnetometer readings in {end - start}s:")
                    print(f"X: {x_mag}, Y: {y_mag}, Z: {z_mag}")
                    x_mag_reading.append(x_mag)
                    y_mag_reading.append(y_mag)
                    z_mag_reading.append(z_mag)
                x_accel_std.append(np.std(x_accel_reading))
                y_accel_std.append(np.std(y_accel_reading))
                z_accel_std.append(np.std(z_accel_reading))
                x_mag_std.append(np.std(x_mag_reading))
                y_mag_std.append(np.std(y_mag_reading))
                z_mag_std.append(np.std(z_mag_reading))
        
def stop_capture():
    global running
    print("Press 'ctrl+c' to stop capturing...")
    while running:
        try:
            time.sleep(0.1)  # Short sleep to avoid busy-waiting
        except KeyboardInterrupt:
            running = False
            print("Stopping capture...")

def init_CMV300_reg(exp_time):
    time.sleep(.001)
    
    Start1LSB = 0x00
    Start1MSB = 0x00
    # write to Start1
    performSPI(1, Start1LSB, 3)
    performSPI(1, Start1MSB, 4)
    performSPI(1, 0xE0, 1)
    performSPI(1, 0x01, 2) # configure only 480 lines
    # read Start1
    lsb = performSPI(0, 0, 3)
    msb = performSPI(0, 0, 4)
    print("Start1LSB:", hex(lsb))
    print("Start1MSB:", hex(msb))
    # configure other registers
    byte1, byte2, byte3 = exposure_time(exp_time)
    performSPI(1, byte3, 42)
    print("42:", performSPI(0, 0, 42))
    performSPI(1, byte2, 43)
    print("43:", performSPI(0, 0, 43))
    performSPI(1, byte1, 44)
    print("44:", performSPI(0, 0, 44))

    performSPI(1, 3, 57)
    print("57:", performSPI(0, 0, 57))
    performSPI(1, 44, 58)
    print("58:", performSPI(0, 0, 58))
    performSPI(1, 240, 59)
    print("59:", performSPI(0, 0, 59))
    performSPI(1, 10, 60)
    print("60:", performSPI(0, 0, 60))
    performSPI(1, 9, 69)
    print("69:", performSPI(0, 0, 69))
    performSPI(1, 2, 80)
    print("80:", performSPI(0, 0, 80))
    performSPI(1, 187, 83)
    print("83:", performSPI(0, 0, 83))
    performSPI(1, 240, 97)
    print("97:", performSPI(0, 0, 97))
    performSPI(1, 10, 98)
    print("98:", performSPI(0, 0, 98))
    performSPI(1, 112, 100) # change base on need
    print("100:", performSPI(0, 0, 100))
    performSPI(1, 98, 101)
    print("101:", performSPI(0, 0, 101))
    performSPI(1, 34, 102)
    print("102:", performSPI(0, 0, 102))
    performSPI(1, 64, 103)
    print("103:", performSPI(0, 0, 103))
    performSPI(1, 94, 106)
    print("106:", performSPI(0, 0, 106))
    performSPI(1, 110, 107)
    print("107:", performSPI(0, 0, 107))
    performSPI(1, 91, 108)
    print("108:", performSPI(0, 0, 108))
    performSPI(1, 82, 109)
    print("109:", performSPI(0, 0, 109))
    performSPI(1, 80, 110)
    print("110:", performSPI(0, 0, 110))
    performSPI(1, 91, 117)
    print("117:", performSPI(0, 0, 117))


    # performSPI(1, reg_frame, 55)
    # print("55:", performSPI(0, 0, 55))
    # performSPI(1, 0x00, 56)
    # print("56:", performSPI(0, 0, 56))
    
    time.sleep(.1) 
    return None

def init_LSM303_reg():
    status = performI2C( 0, 1, 0b01010111, accel_add, ctrl_reg1_a) # perform Power Mode Accel
    if status:
        print("Set Power mode to Normal (100 Hz) on Accelerometer")    
        
    status = performI2C( 0, 1, 0b00000000, mag_add, mr_reg_m) # perform continous conversion
    if status:
        print("Continous-Conversion mode on Magnetometer")  
    return None
#%%
def return_data(exp_time, time_passed):
    print(f"Elapsed Time: {time_passed}, Total Frames Captured: {true_frame_cnt}")
    
    pixel_cnt = np.arange(len(plot_pixel))
    plt.figure(figsize=(12, 6))
    plt.plot(pixel_cnt, plot_pixel, label='Intensity Value')
    plt.title(f'Intensity with EXP_Time: {exp_time}')  # Convert exp_time to string if needed
    plt.ylabel('Intensity Value')
    plt.xlabel('Frame')
    plt.legend()
    plt.grid()
    plt.show()
    
    
    plt.figure(figsize=(12, 6))
   
    # Plot X-axis data
    plt.subplot(3, 1, 1)
    plt.plot(x_accel_std, label='X Accelerometer STD', color='red', marker='o')
    plt.title('X Axis Accelerometer Standard Deviation')
    plt.xlabel('Sample Index')
    plt.ylabel('Standard Deviation')
    plt.legend()
    plt.grid()
 
    # Plot Y-axis data
    plt.subplot(3, 1, 2)
    plt.plot(y_accel_std, label='Y Accelerometer STD', color='green', marker='o')
    plt.title('Y Axis Accelerometer Standard Deviation')
    plt.xlabel('Sample Index')
    plt.ylabel('Standard Deviation')
    plt.legend()
    plt.grid()
 
    # Plot Z-axis data
    plt.subplot(3, 1, 3)
    plt.plot(z_accel_std, label='Z Accelerometer STD', color='orange', marker='o')
    plt.title('Z Axis Accelerometer Standard Deviation')
    plt.xlabel('Sample Index')
    plt.ylabel('Standard Deviation')
    plt.legend()
    plt.grid()
 
    plt.tight_layout(pad=2.0)  # Add padding to avoid overlap
    plt.show()
 
    # Plot 2: Magnetometer Standard Deviations (X, Y, Z)
    plt.figure(figsize=(12, 6))
    
    # Plot X-axis data
    plt.subplot(3, 1, 1)
    plt.plot(x_mag_std, label='X Magnetometer STD', color='blue', marker='x')
    plt.title('X Axis Magnetometer Standard Deviation')
    plt.xlabel('Sample Index')
    plt.ylabel('Standard Deviation')
    plt.legend()
    plt.grid()
 
    # Plot Y-axis data
    plt.subplot(3, 1, 2)
    plt.plot(y_mag_std, label='Y Magnetometer STD', color='purple', marker='x')
    plt.title('Y Axis Magnetometer Standard Deviation')
    plt.xlabel('Sample Index')
    plt.ylabel('Standard Deviation')
    plt.legend()
    plt.grid()
 
    # Plot Z-axis data
    plt.subplot(3, 1, 3)
    plt.plot(z_mag_std, label='Z Magnetometer STD', color='cyan', marker='x')
    plt.title('Z Axis Magnetometer Standard Deviation')
    plt.xlabel('Sample Index')
    plt.ylabel('Standard Deviation')
    plt.legend()
    plt.grid()
 
    plt.tight_layout(pad=2.0)  # Add padding to avoid overlap
    plt.show()

