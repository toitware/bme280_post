// Copyright (C) 2021 Toitware ApS. All rights reserved.
// Use of this source code is governed by an MIT-style license that can be found in the LICENSE file.

/**
Program measuring temperature, relative humidity, and atmospheric pressure
  with a BME280.
*/

import gpio
import i2c
import drivers.bme280 as drivers

main:
  bus := i2c.Bus
    --sda=gpio.Pin 21
    --scl=gpio.Pin 22
  device := bus.device drivers.Bme280.I2C_ADDRESS_ALT
  bme := drivers.Bme280 device

  bme.on
  print "Temperature: $bme.read_temperature C"
  print "Humidity: $bme.read_humidity %"
  print "Pressure: $bme.read_pressure Pa"
  bme.off
