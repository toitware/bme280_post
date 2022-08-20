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

  // The BME280 can be configured to have one of two different addresses.
  // - bme280.I2C_ADDRESS, equal to 0x76
  // - bme280.I2C_ADDRESS_ALT, equal to 0x77
  // The address is generally chosen by the break-out board.
  // If the example fails with I2C_READ_FAILED verify that you are using the correct address.
  address := bme280.I2C_ADDRESS
  device := bus.device address

  driver := bme280.Driver device

  print "Temperature: $driver.read_temperature C"
  print "Humidity: $driver.read_humidity %"
  print "Pressure: $driver.read_pressure Pa"
