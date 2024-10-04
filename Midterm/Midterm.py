# -*- coding: utf-8 -*-

#%%
# import various libraries necessary to run your Python code
import time   # time related library
import sys,os    # system related library
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
def twos(value, bit_width):
    if value & (1 << (bit_width-1)):
        value = value - (1 << bit_width)
    return value

#%% 
# Define the two variables that will send data to the FPGA
# We will use WireIn instructions to send data to the FPGA
runs = 100
PC_Control = 1; # send a "go" signal to the FSM
dev.ActivateTriggerIn(0x40, PC_Control) 
print("Send GO signal to the FSM") 
time.sleep(.2)   

PC_Control = 0; 
dev.ActivateTriggerIn(0x40, PC_Control) 

while runs >= 0:
    
    dev.UpdateTriggerOuts()
    
    if dev.IsTriggered(0x60, 0x01):
        
        dev.UpdateWireOuts()
        #Hardcoded FSM starts with reading ACCEL then MAG
        if runs%2 == 0:
            x_accel = twos(dev.GetWireOutValue(0x20), 16)
            y_accel = twos(dev.GetWireOutValue(0x21), 16)
            z_accel = twos(dev.GetWireOutValue(0x22), 16)
            
            print("Accelerometer readings:")
            print(f"X: {x_accel}, Y: {y_accel}, Z: {z_accel}")
        else:
            x_mag = twos(dev.GetWireOutValue(0x23), 16)
            y_mag = twos(dev.GetWireOutValue(0x24), 16)
            z_mag = twos(dev.GetWireOutValue(0x25), 16)
            
            print("Magnetometer readings:")
            print(f"X: {x_mag}, Y: {y_mag}, Z: {z_mag}")
            
        PC_Control = 1; # send a "go" signal to the FSM
        dev.ActivateTriggerIn(0x40, PC_Control) 
        time.sleep(.2)   

        PC_Control = 0; 
        dev.ActivateTriggerIn(0x40, PC_Control) 
        
        runs = runs - 1; 
        
dev.Close
    
#%%