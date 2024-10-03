# This code reads data from the temperature sensor and outputs the results on the screen.
# The bit file programs OpalKelly's XEM7310 board with a finite state machine that implements 
# I2C protocol. With this protocol, temperature data is received from the temperature sensor
# to the FPGA. Then the FPGA transfers the data from the two registers containing 
# the temperature data to the PC using OKWireOut.

# import various libraries necessary to run your Python code
import pyvisa as visa # You should pip install pyvisa and restart the kernel.
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt

import time   # time related library
import sys,os    # system related library
ok_sdk_loc = "C:\\Program Files\\Opal Kelly\\FrontPanelUSB\\API\\Python\\x64"
ok_dll_loc = "C:\\Program Files\\Opal Kelly\\FrontPanelUSB\\API\\lib\\x64"

sys.path.append(ok_sdk_loc)   # add the path of the OK library
os.add_dll_directory(ok_dll_loc)

import ok     # OpalKelly libraryy


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
dev = ok.okCFrontPanel();  # define a device for FrontPanel communication
SerialStatus=dev.OpenBySerial("");      # open USB communication with the OK board
ConfigStatus=dev.ConfigureFPGA("I2C_Temperature.bit"); # Configure the FPGA with this bit file

# Check if FrontPanel is initialized correctly and if the bit file is loaded.
# Otherwise terminate the program
print("----------------------------------------------------")
if SerialStatus == 0:
    print ("FrontPanel host interface was successfully initialized.");
else:    
    print ("FrontPanel host interface not detected. The error code number is:" + str(int(SerialStatus)));
    print("Exiting the program.");
    sys.exit ();

if ConfigStatus == 0:
    print ("Your bit file is successfully loaded in the FPGA.");
else:
    print ("Your bit file did not load. The error code number is:" + str(int(ConfigStatus)));
    print ("Exiting the progam.");
    sys.exit ();
print("----------------------------------------------------")
print("----------------------------------------------------")

#%%
max_voltage = 4.5
step_size = max_voltage / 10
temp_voltage = 0

measured_voltage = np.array([])  # create an empty array to hold our values
measured_current = np.array([])  # create an empty array to hold our values
measured_temperature = np.array([])
std_voltage = np.array([])  # create an empty array to hold our values
std_current = np.array([])  # create an empty array to hold our values
std_temperature = np.array([])

print(power_supply.write("OUTPUT ON"))  # power supply output is turned on

# loop through the different voltages we will apply to the power supply
while temp_voltage <= max_voltage:  # Changed < to <= for the last voltage
    # apply the desired voltage on the 6V power supply and limit the output current to 0.5A
    volt_readings = np.zeros(20)
    curr_readings = np.zeros(20)
    temp_readings = np.zeros(20)
    
    for i in range(len(volt_readings)):
        power_supply.write("APPLy P6V, %0.2f, 0.5" % temp_voltage)

        # pause 50ms to let things settle
        time.sleep(0.5)

        # read the output voltage on the 6V power supply
        measured_voltage_tmp = float(power_supply.query("MEASure:VOLTage:DC? P6V"))
        volt_readings[i] = measured_voltage_tmp  # Use indexing instead of np.append

        # read the output current on the 6V power supply
        measured_current_tmp = float(power_supply.query("MEASure:CURRent:DC? P6V"))
        curr_readings[i] = measured_current_tmp  # Use indexing instead of np.append
        
        # FAILSAFE for 0.5W limit 
        if measured_voltage_tmp * measured_current_tmp >= 0.5:
            power_supply.close()
            print("Exceeded power limit, exiting.")
            sys.exit ();
            
        #Take Temp
        dev.SetWireInValue(0x00, 1); #Sending 1 at memory location 0x00 starts the FSM
        dev.UpdateWireIns();  # Update the WireIns 
        
        time.sleep(0.5);   
        
        dev.UpdateWireOuts()  # Receive the temperature data
        temperature_msb = dev.GetWireOutValue(0x20)  # MSB temperature register
        temperature_lsb = dev.GetWireOutValue(0x21)  # LSB temperature register
        
        temperature = float(((temperature_msb<<8) + temperature_lsb))/8*0.0625; # Put the temperature data together
        temp_readings[i] = temperature
        
    mean_volt = np.mean(volt_readings)  # Calculate mean voltage
    std_volt = np.std(volt_readings)  # Calculate standard deviation of voltage
    mean_curr = np.mean(curr_readings)  # Calculate mean current
    std_curr = np.std(curr_readings)  # Calculate standard deviation of current
    mean_temp = np.mean(temp_readings) 
    std_temp = np.std(temp_readings)    
    
    print ("Temperature is:" + str(temperature));
    measured_voltage = np.append(measured_voltage, mean_volt)
    measured_current = np.append(measured_current, mean_curr)
    measured_temperature = np.append(measured_temperature, mean_temp)
    std_voltage = np.append(std_voltage, std_volt)
    std_current = np.append(std_current, std_curr)
    std_temperature = np.append(std_temperature, std_temp)
    
    temp_voltage += step_size
    
# power supply output is turned off
print(power_supply.write("OUTPUT OFF"))

# close the power supply USB handler.
# Otherwise you cannot connect to it in the future
power_supply.close()
#%%
plt.figure(figsize=(10, 6))
plt.plot(measured_voltage, measured_current, label='IV Curve')
plt.title('Voltage vs. Current of the Resistor')
plt.xlabel('Voltage (V)')
plt.ylabel('Current (A)')
plt.grid()
plt.legend()
plt.draw()

plt.figure(figsize=(10, 6))
plt.plot(measured_voltage, std_current, label= 'Current Std Dev')
plt.title('I-V Standard Deviation')
plt.xlabel('Voltage (V)')
plt.ylabel('Current (A)')
plt.grid()
plt.legend()
plt.draw()

plt.figure(figsize=(10, 6))
plt.plot(measured_voltage, measured_temperature, label='Measured Temperature')
plt.title('Voltage vs. Temperature of the Resistor')
plt.xlabel('Voltage (V)')
plt.ylabel('Temperature (C)')
plt.grid()
plt.legend()
plt.draw()

# Plotting the Standard Deviation of Temperature
plt.figure(figsize=(10, 6))
plt.errorbar(measured_voltage, std_temperature, label='Temperature Std Dev')
plt.title('Standard Deviation of Temperature vs. Voltage')
plt.xlabel('Voltage (V)')
plt.ylabel('Temperature (C)')
plt.grid()
plt.legend()
plt.draw()

plt.show()

#%% Press control-C in the console window to stop the loop
# try:
#     while True:    
#         dev.SetWireInValue(0x00, 1); #Sending 1 at memory location 0x00 starts the FSM
#         dev.UpdateWireIns();  # Update the WireIns    
    
#         dev.UpdateWireOuts()  # Receive the temperature data
#         temperature_msb = dev.GetWireOutValue(0x20)  # MSB temperature register
#         temperature_lsb = dev.GetWireOutValue(0x21)  # LSB temperature register
        
#         temperature = float(((temperature_msb<<8) + temperature_lsb))/8*0.0625; # Put the temperature data together
#         time.sleep(0.5);        
#         print ("Temperature is:" + str((temperature))); # print the results
# except KeyboardInterrupt:
#     pass