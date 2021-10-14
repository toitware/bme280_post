# BME280 - Weather station example

An example of how to use the BME280 sensor as a weather station on your ESP32.

## Deploy application

First, install the [BME280 package](https://pkg.toit.io/package/github.com%2Ftoitware%2Fbme280-driver@v1.0.0) by executing the following Toit CLI commands in a terminal window:

```bash
toit pkg sync
toit pkg init
toit pkg install bme280
```

To deploy the application on your ESP32, execute the Toit CLI command, by replacing `device-name` with the name of your device:

```bash
toit deploy weather-station.yaml -d device-name
```
