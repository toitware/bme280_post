// Copyright (C) 2021 Toitware ApS. All rights reserved.
// Use of this source code is governed by an MIT-style license that can be found in the LICENSE file.

/**
Program measuring temperature, relative humidity, and atmospheric pressure
  with a BME280.
*/

import gpio
import i2c
import bme280

main:
  bus := i2c.Bus
    --sda=gpio.Pin 21
    --scl=gpio.Pin 22

  address := bme280.I2C_ADDRESS // for 0x76, bme280.I2C_ADDRESS_ALT for 0x77
  device := bus.device address

  driver := bme280.Driver device

  print "Temperature: $driver.read_temperature C"
  print "Humidity: $driver.read_humidity %"
  print "Pressure: $driver.read_pressure Pa"
