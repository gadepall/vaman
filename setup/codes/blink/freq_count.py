#Code by GVV Sharma
#Jan 15, 2021
#Released under GNU GPL
#Program to find the bit length for a 72 MHz clock

fre = int(72e6)

print(bin(fre),fre.bit_length())

