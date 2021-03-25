#!/bin/bash

#mount /dev/sda1 /mnt/pico
#cp /home/pi/main.uf2 /mnt/pico
#sync
#sudo umount /mnt/pico

#python3 /home/pi/TinyFPGA-Programmer-Application/tinyfpga-programmer-gui.py \
#--port /dev/ttyACM0 --appfpga /home/pi/helloworldfpga.bin --mode fpga

#python3 /home/pi/TinyFPGA-Programmer-Application/tinyfpga-programmer-gui.py --port /dev/ttyACM0  --m4app  blink.bin --mode m4

#python3 /home/pi/TinyFPGA-Programmer-Application/tinyfpga-programmer-gui.py  --port /dev/ttyACM0 --bootloader qorc_bootloader_dual.bin --mode m4

#python3 /home/pi/TinyFPGA-Programmer-Application/tinyfpga-programmer-gui.py --port /dev/ttyACM0 --m4app m4.bin --appfpga top.bin --mode m4-fpga
#python3 /home/pi/TinyFPGA-Programmer-Application/tinyfpga-programmer-gui.py --port /dev/ttyACM0 --appfpga top.bin --mode m4-fpga
#python3 /home/pi/TinyFPGA-Programmer-Application/tinyfpga-programmer-gui.py --port /dev/ttyACM0 --m4app incdec.bin  --mode m4-fpga
python3 /home/pi/TinyFPGA-Programmer-Application/tinyfpga-programmer-gui.py --port /dev/ttyACM0 --m4app gpio.bin  --mode m4-fpga
#python3 /home/pi/TinyFPGA-Programmer-Application/tinyfpga-programmer-gui.py --port /dev/serial0 --m4app red.bin  --mode m4-fpga
#python3 /home/pi/TinyFPGA-Programmer-Application/tinyfpga-programmer-gui.py --port /dev/ttyUSB0 --m4app red.bin  --mode m4-fpga
#python3 /home/pi/TinyFPGA-Programmer-Application/tinyfpga-programmer-gui.py --port /dev/ttyACM0 --m4app m4.bin --appfpga top.bin --mode m4-fpga
