# -*- coding: utf-8 -*-

#%%
# import various libraries necessary to run your Python code
import pyvisa as visa # You should pip install pyvisa and restart the kernel.
import time   # time related library
import sys,os    # system related library
import numpy as np
import cv2
import threading
import helper_function
import global_val

ok_sdk_loc = "C:\\Program Files\\Opal Kelly\\FrontPanelUSB\\API\\Python\\x64"
ok_dll_loc = "C:\\Program Files\\Opal Kelly\\FrontPanelUSB\\API\\lib\\x64"

sys.path.append(ok_sdk_loc)   # add the path of the OK library
os.add_dll_directory(ok_dll_loc)

import ok     # OpalKelly library
#%% 
device_manager = visa.ResourceManager()
devices = device_manager.list_resources()
number_of_device = len(devices)
power_supply_id = -1;

for i in range (0, number_of_device):

# check that it is actually the power supply
    try:
        device_temp = device_manager.open_resource(devices[i])
        print("Instrument connect on USB port number [" + str(i) + "] is " + device_temp.query("*IDN?"))
        if (device_temp.query("*IDN?") == 'HEWLETT-PACKARD,E3631A,0,3.2-6.0-2.0\r\n'):
            power_supply_id = i        
        if (device_temp.query("*IDN?") == 'HEWLETT-PACKARD,E3631A,0,3.0-6.0-2.0\r\n'):
            power_supply_id = i
        if (device_temp.query("*IDN?") == 'Agilent Technologies,33511B,MY52301259,3.03-1.19-2.00-52-00\n'):
            waveform_generator_id = i
        if (device_temp.query("*IDN?") == 'Agilent Technologies,34461A,MY53207861,A.01.10-02.25-01.10-00.35-01-01\n'):
            digital_multimeter_id = i 
        if (device_temp.query("*IDN?") == 'Keysight Technologies,34461A,MY53212931,A.02.08-02.37-02.08-00.49-01-01\n'):
            digital_multimeter_id = i            
        if (device_temp.query("*IDN?") == 'KEYSIGHT TECHNOLOGIES,MSO-X 3024T,MY55100343,07.50.2021102830\n'):
            oscilloscope_id = i                        
        device_temp.close()
    except:
        print("Instrument on USB port number [" + str(i) + "] cannot be connected. The instrument might be powered of or you are trying to connect to a mouse or keyboard.\n")
        
if (power_supply_id == -1):
    print("Power supply instrument is not powered on or connected to the PC.")   
    sys.exit ();
else:
    print("Power supply is connected to the PC.")
    global_val.power_supply = device_manager.open_resource(devices[power_supply_id]) 

# Define FrontPanel device variable, open USB communication and
# load the bit file in the FPGA
global_val.dev = ok.okCFrontPanel()  # define a device for FrontPanel communication
SerialStatus= global_val.dev.OpenBySerial("")      # open USB communication with the OK board

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
print(global_val.power_supply.write("OUTPUT ON"))  # Power supply output is turned on
voltage = 4
global_val.power_supply.write("APPLy P6V, %0.2f, 1" % voltage)
time.sleep(0.5)

# helper_function.performMotor(5, 1, 100)

helper_function.init_LSM303_reg()
helper_function.init_CMV300_reg(exp_time= .001)

obj_keypoints, obj_descriptors = helper_function.capture_obj_img()
time.sleep(1)

start = time.time()
LSM303_thread = threading.Thread(target = helper_function.display_LSM303_readings)
capture_thread = threading.Thread(target = helper_function.capture_frames)
track_obj_thread = threading.Thread(target = helper_function.track_and_display_obj, args=(obj_keypoints, obj_descriptors))

capture_thread.start()
track_obj_thread.start()
LSM303_thread.start()
helper_function.stop_capture()

capture_thread.join()  # Wait for capture to finish (this won't happen unless stopped)
track_obj_thread.join()
LSM303_thread.join()
end = time.time()

# GRAPHING TIME ---------------------
helper_function.return_data(exp_time= .001, time_passed = end - start)

time.sleep(10)
print(global_val.power_supply.write("OUTPUT OFF"))
global_val.power_supply.close()  
global_val.dev.Close()
    
#%%