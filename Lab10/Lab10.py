# -*- coding: utf-8 -*-

#%%
# import various libraries necessary to run your Python code
import time   # time related library
import sys,os    # system related library
import numpy as np
from PIL import Image
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation
import cv2
import threading

ok_sdk_loc = "C:\\Program Files\\Opal Kelly\\FrontPanelUSB\\API\\Python\\x64"
ok_dll_loc = "C:\\Program Files\\Opal Kelly\\FrontPanelUSB\\API\\lib\\x64"

sys.path.append(ok_sdk_loc)   # add the path of the OK library
os.add_dll_directory(ok_dll_loc)

import ok     # OpalKelly library
#%% 
# Define FrontPanel device variable, open USB communication and
# load the bit file in the FPGA
dev = ok.okCFrontPanel()  # define a device for FrontPanel communication
SerialStatus=dev.OpenBySerial("")      # open USB communication with the OK board

# We will NOT load the bit file because it will be loaded using JTAG interface from Vivado

# Check if FrontPanel is initialized correctly and if the bit file is loaded.
# Otherwise terminate the program
print("----------------------------------------------------")
if SerialStatus == 0:
    print ("FrontPanel host interface was successfully initialized.")
else:    
    print ("FrontPanel host interface not detected. The error code number is:" + str(int(SerialStatus)))
    print("Exiting the program.")
    sys.exit ()

#%%
# Functions
def twos(value, bit_width):
    if value & (1 << (bit_width-1)):
        value = value - (1 << bit_width)
    return value

def performSPI(mode, data_in, slave_reg):
    dev.SetWireInValue(0x04, 1) # Start Button must set high and set low after
    dev.SetWireInValue(0x00, mode) # mode read 0 write 1
    # dev.SetWireInValue(0x01, num_of_bytes) # num_of_bytes
    dev.SetWireInValue(0x02, data_in) # data_in
    dev.SetWireInValue(0x03, slave_reg) # slave_reg
    dev.UpdateWireIns()
    
    time.sleep(.1)   # wait .1 secs
    dev.SetWireInValue(0x04, 0) 
    dev.UpdateWireIns()
    while True:
        dev.UpdateWireOuts()
        # print(dev.GetWireOutValue(0x21))
        if dev.GetWireOutValue(0x21) == 1:
            if not mode:
                dev.UpdateWireOuts()
                return dev.GetWireOutValue(0x20)
            else:
                return 1
    return -1
frame_cnt = 0
reg_frame = 1
image_data = np.zeros(reg_frame*480*640, dtype=np.uint8)
frame_lock = threading.Lock()
running = True
new_frame_captured = False

plot_pixel = [] 

def capture_frames():
    global image_data, running, new_frame_captured, frame_cnt
    while running :
        with frame_lock:
            start = time.time()
            # Simulated capture logic
            dev.SetWireInValue(0x04, 2)
            dev.SetWireInValue(0x01, reg_frame) 
            dev.UpdateWireIns()
            
            dev.SetWireInValue(0x04, 0)     
            dev.UpdateWireIns()
            status = dev.ReadFromBlockPipeOut(0xa0, 1024, image_data)
            dev.UpdateWireOuts()
            signal = dev.GetWireOutValue(0x22)
            print(f"Status: {status},LineValid: {bool(signal & 16)}, DataValid: {bool(signal & 8)}, IsEmpty: {bool(signal & 4)}, IsBTFull: {bool(signal & 2)}, isFull: {bool(signal & 1)}")
            if status > 0:
                new_frame_captured = True  # Mark that a new frame has been captured
                frame_cnt += 1
            print(image_data.reshape((reg_frame,480,640)))
            end = time.time()
            print(f"Total Transfer Time: {end - start:.4f} seconds")
            # print("Captured a frame")
        time.sleep(0.01)  # Simulate a delay in capturing
        
def display_frames():
    global image_data, running, new_frame_captured, plot_pixel
    cv2.namedWindow('Video', cv2.WINDOW_NORMAL)

    while running:
        with frame_lock:
            if new_frame_captured:
                frames = image_data.reshape((reg_frame, 480, 640)) 
                for frame in frames:
                    # print(frame)
                    new_frame_captured = False  # Reset the flag
                    cv2.imshow('Video', frame)
                    
                    if len(plot_pixel) <= 100:
                        plot_pixel.append(frame[50][50])
                # print("Displayed a frame")
                
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    running = False
    cv2.destroyAllWindows()
    
def stop_capture():
    global running
    print("Press 'q' to stop capturing...")
    while running :
        try:
            time.sleep(0.1)  # Short sleep to avoid busy-waiting
        except KeyboardInterrupt:
            running = False
            print("Stopping capture...")
        
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
#%%
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
exp_time = .006 # Optimal is 6 ms
byte1, byte2, byte3 = exposure_time(exp_time)
performSPI(1, byte3, 42)
print("42:", performSPI(0, 0, 42))
performSPI(1, byte2, 43)
print("43:", performSPI(0, 0, 43))
performSPI(1, byte1, 44)
print("44:", performSPI(0, 0, 44))
# above change exposure time
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


performSPI(1, reg_frame, 55)
print("55:", performSPI(0, 0, 55))
performSPI(1, 0x00, 56)
print("56:", performSPI(0, 0, 56))
# above change to frames to 100
time.sleep(.1)  
# Start the overall timer
start = time.time()

capture_thread = threading.Thread(target=capture_frames)
display_thread = threading.Thread(target=display_frames)

capture_thread.start()
display_thread.start()
stop_capture()

capture_thread.join()  # Wait for capture to finish (this won't happen unless stopped)
display_thread.join()   # Wait for display to finish

end = time.time()
print(f"Total Time for {frame_cnt} Frames: {end - start:.4f} seconds, FPS: {frame_cnt/(end-start) :.4f} frames per second")

print(f"Temporal Noise with {exp_time} secs: {np.std(plot_pixel)}")
#%%
pixel_cnt = np.arange(len(plot_pixel))

plt.figure(figsize=(12, 6))
plt.plot(pixel_cnt, plot_pixel, label='Intensity Value')
plt.title(f'Intensity with EXP_Time: {exp_time}')  # Convert exp_time to string if needed
plt.ylabel('Intensity Value')
plt.xlabel('Frame')
plt.legend()
plt.grid()
plt.show()
# ways to improve time for single frame improve block size transfer, 
# lower exposure time: by changin register or changing frequency of CLK_IN
# current setup CLKIN 25MHZ, Res:, Block Transfer: 1024
dev.Close()
    
#%%