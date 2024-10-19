# -*- coding: utf-8 -*-

#%%
# import various libraries necessary to run your Python code
import time   # time related library
import sys,os    # system related library
import numpy as np
from PIL import Image
import matplotlib.pyplot as plt
import cv2
from matplotlib.animation import FuncAnimation
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
performSPI(1, 0x2c, 42)
print("42:", performSPI(0, 0, 42))
performSPI(1, 0x01, 43)
print("43:", performSPI(0, 0, 43))
performSPI(1, 0x00, 44)
print("44:", performSPI(0, 0, 44))
# above change exposure time to 300
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

num_frames = 100
performSPI(1, num_frames, 55)
print("55:", performSPI(0, 0, 55))
performSPI(1, 0x00, 56)
print("56:", performSPI(0, 0, 56))
# above change to frames to 100
time.sleep(.1)  

dev.SetWireInValue(0x04, 2)
dev.SetWireInValue(0x01,num_frames) 
dev.UpdateWireIns()
 
dev.SetWireInValue(0x04, 0)     
dev.UpdateWireIns()

image_data = np.zeros(num_frames*480*640, dtype=np.uint8)
%matplotlib qt
# Start the overall timer
start = time.time()

dev.ReadFromBlockPipeOut(0xa0, 1024, image_data)
image_data = image_data.reshape((num_frames, 480, 640))

# for frame in range(num_frames):
#     # image = Image.fromarray(image_data[frame], mode='L')
#     # plt.title(f'Frame {frame + 1}')
    
#     plt.axis('off')  # Hide axis for better visualization
#     plt.imshow(image_data[frame], cmap='gray')
    
#     # if frame < num_frames - 1:
#     #     plt.pause(0.0001) 
#     #     plt.clf()
#     plt.show()

# Set up the figure and axis
fig, ax = plt.subplots()
img = ax.imshow(image_data[0], cmap='gray')  # Display the first frame initially
plt.axis('off')  # Hide the axes

# Update function for the animation
def update(frame):
    img.set_array(image_data[frame])  # Update the displayed image data
    return img,

# Create the animation
ani = FuncAnimation(fig, update, frames=num_frames, blit=True, interval=100)

plt.show()
end = time.time()

print(f"Total Time for {num_frames} Frames: {end - start:.4f} seconds")
# ways to improve time for single frame improve block size transfer, 
# lower exposure time: by changin register or changing frequency of CLK_IN
# current setup CLKIN 25MHZ, Res:, Block Transfer: 1024
dev.Close()
    
#%%