This is an example to run I2c communication between ESP32 and Arduino

1. ESP32 Runs as Master
2. Arduino Runs as Slave with Address (0x0F)

Pin connections:

I2C		ESP32		Arduino   

SDA		GPIO21	----	A4
SDC		GPIO22	----	A5
		VCC	----	VCC
		GND	----	GND
