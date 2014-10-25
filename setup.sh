#!/bin/bash

DESTDIR=/usr/share/arduino/libraries

# Analog to digital converter
git clone https://github.com/adafruit/Adafruit_ADS1X15 $DESTDIR/ADS1X15

# Temperature and Humidity
git clone https://github.com/adafruit/Adafruit_HTU21DF_Library.git $DESTDIR/HTU21DF

# Best pressure sensor. Replaced by BMP180, interfaces identical
git clone https://github.com/adafruit/Adafruit-BMP085-Library $DESTDIR/BMP085
# Good pressure sensor
git clone https://github.com/adafruit/Adafruit_MPL115A2 $DESTDIR/MPL115A2
# Cheap pressure sensor
git clone https://github.com/adafruit/Adafruit_MPL3115A2_Library.git $DESTDIR/MPL3115A2

# Digital UV Index / IR / Visible Light Sensor
git clone https://github.com/adafruit/Adafruit_SI1145_Library.git $DESTDIR/SI1145

# Full-featured GPS/NMEA Parser for Arduino
git clone https://github.com/mikalhart/TinyGPSPlus.git $DESTDIR/TinyGPSPlus

# AdaFruit motor/servo shield
git clone https://github.com/adafruit/Adafruit_Motor_Shield_V2_Library.git $DESTDIR/Motor_Shield


# I2C Raspberry Pi library
git clone git://git.drogon.net/wiringPi wiringPi && cd wiringPi && ./build && cd ..

