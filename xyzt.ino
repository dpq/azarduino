#include <Wire.h>

const int pin_MQ131 = 0;
const int pin_MQ9 = 1;
const int pin_FC_22_I = 2;

#include <Adafruit_ADS1015.h>
Adafruit_ADS1115 ads;

#include <Adafruit_SI1145.h>
Adafruit_SI1145 uv = Adafruit_SI1145();

#include <Adafruit_BMP085.h>
Adafruit_BMP085 bmp;

void setup() {
  // TODO check if begins() are ok
  Serial.begin(9600);
  Wire.begin();
  uv.begin();
  bmp.begin();
  interrupts();
  ads.begin();
  Serial.println("INIT");
  delay(1000);
}

void loop() {
  Serial.print("UV index SI1145:");
  Serial.print(uv.readUV()/100);

  Serial.print(";Temperature [C*] BMP085:");
  Serial.print(bmp.readTemperature());

  Serial.print(";Pressure [Pa] BMP085:");
  Serial.print(bmp.readPressure());

  Serial.print(";Noxious gas [ppm] FC-22-I:");
  Serial.print(ads.readADC_SingleEnded(pin_FC_22_I));

  Serial.print(";O3 & Cl2 [ppm] MQ131:");
  Serial.print(ads.readADC_SingleEnded(pin_MQ131));

  Serial.print(";Combustible gas [ppm] MQ9:");
  Serial.print(ads.readADC_SingleEnded(pin_MQ9));

  Serial.println();
  delay(1000);
}
