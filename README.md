# Weather-Monitoring-Station
>_A Bluetooth-based Wireless Sensor Network using four weather-sensors interfaced with Arduino that displays live weather data on a terminal_

The wireless weather monitoring station is a unique meteorological project that makes good use of fundamentals of Electronics & Communication Engineering. This project
promises cost-effectiveness of a small personal weather station but provides professional GUI-based real-time monitoring facilities.The software section of the project deals with various IDEs such as Fritzing, Arduino, and Processing. The complete working code is done on Arduino (microcontroller side) and Processing (computer-side).

After going through the literature survey, a design for an electronic weather station is proposed. The purpose of the project is to design and demonstrate a microcontroller-controlled weather station that sends data wirelessly to a personal computer for real-time monitoring and storage. For wireless communication, Bluetooth transceiver is chosen due to its lower price than other communication systems and easy connectivity with personal computer systems. Below is a list of functionalities that have been realised by this weather station:
* Outdoor temperature measurement
* Relative Humidity measurement
* Ambient Lighting measurement
* Precipitation detection & measurement
* Wireless sensor-data transfer

In short, the proposed weather station design implements a Microcontroller-controlled Bluetooth-based Wireless Sensor Network.

* Four sensors, temperature sensor, humidity sensor, rain sensor, and ambient light sensor are interfaced with the microcontroller.
* The microcontroller gathers real-time weather data from these four sensors for further processing.
* For transmission to PC-terminals through Bluetooth transceiver, the sensor data needs to be converted into a single data-packet.
* Microcontroller is coded in such a way, that the sensor data it previously collected is converted into a data packet and sent to the Bluetooth module.
* The Bluetooth module broadcasts this sensor data-packet and those terminals that have an inbuilt or an external Bluetooth module can receive this data.
* This data can be displayed on the Computer Screen by appropriately programming the computer.

### Circuit Diagram:

![](https://github.com/sarthi92/Weather-Monitoring-Station/blob/master/circuit.jpg)
