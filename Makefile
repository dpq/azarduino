BOARD_TAG = uno
MCU=atmega328p
ARDUINO_DIR=/usr/share/arduino
ARDUINO_LIBS = Ethernet Ethernet/utility SPI Wire Wire/utility HTU21DF MPL3115A2 SoftwareSerial TinyGPSPlus BMP085 SI1145 ADS1X15 MPL115A2
ARDUINO_PORT = /dev/arduino
USER_LIB_PATH = /home/pi/arduino
PARSE_BOARD = /usr/bin/ard-parse-boards --boards_txt=$(BOARDS_TXT)
include /usr/share/arduino/Arduino.mk