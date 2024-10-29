# -*- coding: utf-8 -*-

#%%
# import various libraries necessary to run your Python code
import pyvisa as visa # You should pip install pyvisa and restart the kernel.
import matplotlib.pyplot as plt
import time   # time related library
import sys,os    # system related library
import numpy as np
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
    power_supply = device_manager.open_resource(devices[power_supply_id]) 
    
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

def performI2C(mode, num_of_bytes, data_in, slave_add, slave_reg):
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
# duty out of 10 Ex: 1 -> 10% etc.
# direction 0 -> forward 1-> reverse
def performMotor(duty, direction, num_of_pulses):
    dev.SetWireInValue(0x05, 0x00000002) # Start Button must set high and set low after
    dev.SetWireInValue(0x06, duty)
    dev.SetWireInValue(0x07, direction)
    dev.SetWireInValue(0x08, num_of_pulses)
    dev.UpdateWireIns()
    
    time.sleep(.1)   # wait .1 secs
    dev.SetWireInValue(0x05, 0) 
    dev.UpdateWireIns()
    return 1

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
#%% 
# define values
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
status = performI2C( 0, 1, 0b01010111, accel_add, ctrl_reg1_a) # perform Power Mode Accel
if status:
    print("Set Power mode to Normal (100 Hz) on Accelerometer")
    
# status = performI2C( 0, 1, 0b0100000, accel_add, ctrl_reg4_a) # perform Power Mode Accel
# if status:
#     print("Set MSB to Lower Address on Accelerometer")
status = performI2C( 0, 1, 0b10010000, mag_add, cra_reg_m) # perform TempEn
if status:
    print("Temperature Enabled (15 Hz) on Magnetometer")
    
status = performI2C( 0, 1, 0b10000000, mag_add, crb_reg_m) # set gain value
if status:
    print("Gain set to +- 4.0 Gauss on Magnetometer")   
    
status = performI2C( 0, 1, 0b00000000, mag_add, mr_reg_m) # perform continous conversion
if status:
    print("Continous-Conversion mode on Magnetometer")   


max_voltage = 5
step_size = 0.5
temp_voltage = 3

num_of_pulses = 100
direction = 1


x_accel_mean = []
x_accel_max = []
y_accel_mean = [] 
y_accel_max = []
z_accel_mean = []
z_accel_max = []
print(power_supply.write("OUTPUT ON"))  # Power supply output is turned on
while temp_voltage <= max_voltage:
    power_supply.write("APPLy P6V, %0.2f, 1" % temp_voltage)
    time.sleep(0.5)
    print("-----------------------------------")
    print(f"Voltage:{temp_voltage}")
    performMotor(7, direction, num_of_pulses)  # 40% duty cycle, forward, 4 pulses
    direction = 1 - direction

    x_accel_readings = []
    y_accel_readings = []
    z_accel_readings = []
    
    for runs in range(5):
        print("Accelerometer data is available")
        
        # Read accelerometer data
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
        
        x_accel = twos(x_accel, 16) / 16000
        y_accel = twos(y_accel, 16) / 16000
        z_accel = twos(z_accel, 16) / 16000
        print("Accelerometer readings:")
        print(f"X: {x_accel}, Y: {y_accel}, Z: {z_accel}")
        end = time.time()
        print(f"Time: {end-start:.4f}")
        x_accel_readings.append(x_accel)
        y_accel_readings.append(y_accel)
        z_accel_readings.append(z_accel)
        
        # Read magnetometer data
        # print("Magnetometer data is available")
        # x_mag = -1
        # y_mag = -1
        # z_mag = -1
        # start = time.time()
        # for i in range(6):
        #     data_out = performI2C(1, 1, 0, mag_add, mag_reg_x + i)
        #     if i == 0:
        #         x_mag = data_out << 8
        #     elif i == 1:
        #         x_mag = data_out | x_mag
        #     elif i == 2:
        #         z_mag = data_out << 8
        #     elif i == 3:
        #         z_mag = data_out | z_mag
        #     elif i == 4:
        #         y_mag = data_out << 8
        #     elif i == 5:
        #         y_mag = data_out | y_mag
        
        # x_mag = twos(x_mag, 16)
        # y_mag = twos(y_mag, 16)
        # z_mag = twos(z_mag, 16)
        # print("Magnetometer readings:")
        # print(f"X: {x_mag}, Y: {y_mag}, Z: {z_mag}")
        # end = time.time()
        # print(f"Time: {end-start:.4f}")
    x_accel_max.append(np.max(x_accel_readings))
    x_accel_mean.append(np.mean(x_accel_readings))
    y_accel_max.append(np.max(y_accel_readings))
    y_accel_mean.append(np.mean(y_accel_readings))
    z_accel_max.append(np.max(z_accel_readings))
    z_accel_mean.append(np.mean(z_accel_readings))

    temp_voltage += step_size

time.sleep(5)
print(power_supply.write("OUTPUT OFF"))
power_supply.close()   
dev.Close()
    
#%%
voltages = np.arange(3, max_voltage + step_size, step_size)

plt.figure(figsize=(12, 6))

# Plot X-axis data
plt.subplot(3, 1, 1)
plt.plot(voltages, x_accel_mean, label='Mean X Acceleration', marker='o')
plt.plot(voltages, x_accel_max, label='Max X Acceleration', marker='x')
plt.title('X Accelerometer Data')
plt.xlabel('Voltage (V)')
plt.ylabel('Acceleration (g)')
plt.legend()
plt.grid()

# Plot Y-axis data
plt.subplot(3, 1, 2)
plt.plot(voltages, y_accel_mean, label='Mean Y Acceleration', marker='o')
plt.plot(voltages, y_accel_max, label='Max Y Acceleration', marker='x')
plt.title('Y Accelerometer Data')
plt.xlabel('Voltage (V)')
plt.ylabel('Acceleration (g)')
plt.legend()
plt.grid()

# Plot Z-axis data
plt.subplot(3, 1, 3)
plt.plot(voltages, z_accel_mean, label='Mean Z Acceleration', marker='o')
plt.plot(voltages, z_accel_max, label='Max Z Acceleration', marker='x')
plt.title('Z Accelerometer Data')
plt.xlabel('Voltage (V)')
plt.ylabel('Acceleration (g)')
plt.legend()
plt.grid()

plt.tight_layout(pad=2.0)  # Add padding to avoid overlap
plt.show()