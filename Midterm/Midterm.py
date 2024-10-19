# -*- coding: utf-8 -*-

#%%
# import various libraries necessary to run your Python code
import time   # time related library
import sys,os    # system related library
import numpy as np
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

def performOperation(mode, num_of_bytes, data_in, slave_add, slave_reg):
    dev.SetWireInValue(0x05, 1) # Start Button must set high and set low after
    dev.SetWireInValue(0x00, mode) # mode read 1 write 0
    dev.SetWireInValue(0x01, num_of_bytes) # num_of_bytes
    dev.SetWireInValue(0x02, data_in) # data_in
    dev.SetWireInValue(0x03, slave_add) # slave_add
    dev.SetWireInValue(0x04, slave_reg) # slave_reg
    dev.UpdateWireIns()
    
    time.sleep(.1)   # wait .1 secs
    dev.SetWireInValue(0x05, 0) 
    dev.UpdateWireIns()
    while True:
        dev.UpdateWireOuts()
        # print(dev.GetWireOutValue(0x21))
        if dev.GetWireOutValue(0x21) == 1:
            if mode:
                dev.UpdateWireOuts()
                return dev.GetWireOutValue(0x20)
            else:
                return 1
    return -1
#%% 
# define values
accel_add = 0x19 # 7'b001_1001
mag_add = 0x1E # 7'b001_1110

ctrl_reg1_a = 0x20 # 8'b0010_0000
status_reg_a = 0x27 # 8'b0010_0111
accel_reg_x = 0x28 # 8'b0010_1000

cra_reg_m = 0x00 # 8'b0000_0000
crb_reg_m = 0x01 # 8'b0000_0001
mr_reg_m = 0x02 # 8'b0000_0010
sr_reg_m = 0x09 # 8'b0000_1001
mag_reg_x = 0x03 # 8'b0000_0011

ira_reg_m = 0x0A
irb_reg_m = 0x0B
irc_reg_m = 0x0C

#%%
status = performOperation( 0, 1, 0b00010111, accel_add, ctrl_reg1_a) # perform Power Mode Accel
if status:
    print("Set Power mode to Normal (1 Hz) on Accelerometer")
    
# status = performOperation( 0, 1, 0b10010000, mag_add, cra_reg_m) # perform TempEn
# if status:
#     print("Temperature Enabled (15 Hz) on Magnetometer")
    
# status = performOperation( 0, 1, 0b10000000, mag_add, crb_reg_m) # set gain value
# if status:
#     print("Gain set to +- 4.0 Gauss on Magnetometer")   
    
status = performOperation( 0, 1, 0b00000000, mag_add, mr_reg_m) # perform continous conversion
if status:
    print("Continous-Conversion mode on Magnetometer")   

# check magnetometer is connected
# status = performOperation( 1, 1, 0, mag_add, ira_reg_m) 
# if status == 0x48:
#     print("Check 1")
# else:
#     dev.Close()
#     sys.exit()
# status = performOperation( 1, 1, 0, mag_add, irb_reg_m) 
# if status == 0x34:
#     print("Check 2")
# else:
#     dev.Close()
#     sys.exit()
# status = performOperation( 1, 1, 0, mag_add, irc_reg_m) 
# if status == 0x33:
#     print("Check 3")
# else:
#     dev.Close()
#     sys.exit()
runs = 100
while runs >= 0:
    # time.sleep(2)
    if runs%2 == 0: #switch between accel and mag sensor
        status_accel = 0
        # while status_accel != 0xFF:
        #     status_accel = performOperation( 1, 1, 0, accel_add, status_reg_a) # check the status reg for data available
        #     print("Accel Status 0x{:X}".format(status_accel))
        print("Accelerometer data is available")
        x_accel = -1
        y_accel = -1
        z_accel = -1
        for i in range(6):
            data_out = performOperation( 1, 1, 0, accel_add, accel_reg_x + i)
            # place data correspondingly
            if i == 0:
                x_accel = data_out
            elif i == 1:
                x_accel = (data_out << 8) | x_accel
            elif i == 2:
                y_accel = data_out
            elif i == 3:
                y_accel = (data_out << 8) | y_accel
            elif i == 4:
                z_accel = data_out
            elif i == 5:
                z_accel = (data_out << 8) | z_accel
        x_accel = twos(x_accel, 16) / 16000
        y_accel = twos(y_accel, 16) / 16000
        z_accel = twos(z_accel, 16) / 16000
        print("Accelerometer readings:")
        print(f"X: {x_accel}, Y: {y_accel}, Z: {z_accel}")
        
        runs = runs - 1; 
    else:
       status_mag = 0
       # while status_mag != 0x13:
       #     status_mag = performOperation( 1, 1, 0, mag_add, sr_reg_m) # check the status reg for data available
       #     print("Mag Status 0x{:X}" .format(status_mag))
       # print("Magnetometer data is available")
       x_mag = -1
       y_mag = -1
       z_mag = -1
       for i in range(6):
           data_out = performOperation( 1, 1, 0, mag_add, mag_reg_x + i)
           # place data correspondingly
           if i == 0:
               x_mag = data_out << 8
           elif i == 1:
               x_mag = data_out | x_mag
           elif i == 2:
               z_mag = data_out << 8
           elif i == 3:
               z_mag = data_out | z_mag
           elif i == 4:
               y_mag = data_out << 8
           elif i == 5:
               y_mag = data_out | y_mag
               
       x_mag = twos(x_mag, 16)
       y_mag = twos(y_mag, 16)
       z_mag = twos(z_mag, 16)
       print("Magnetometer readings:")
       print(f"X: {x_mag}, Y: {y_mag}, Z: {z_mag}")
       
       runs = runs - 1; 
    
dev.Close()
    
#%%