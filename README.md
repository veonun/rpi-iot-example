# IOT LED Example for WEMOS ESP8266

This example is prepared for [Introduction to Computers and Informatics class of TTU CyberSec Eng.](https://wiki.itcollege.ee/index.php/Category:I600_Introduction_to_Computers_and_Informatics#Assignment:_Set_up_basic_IoT_scenario)

Don't forget to Upload uwebsockets.py
```sh
wget https://gist.githubusercontent.com/laurivosandi/2983fe38ad7aff85a5e3b86be8f00718/raw/cfa52f739080d42029d21017c5ae2a7b97793b06/uwebsockets.py
ampy -p /dev/ttyUSB0 put uwebsockets.py
```
 
## Requirements
* Python 3.x

## Running

First clone the repository to your computer via Git. Following commands are for Linux and Mac.
```sh
git clone https://github.com/veonun/rpi-iot-example.git
cd rpi-iot-example
```

### On your machine

Run `main.py` like
```sh
python main.py
```
then browse to [local host](http://localhost:8080/)

### On WEMOS

Run following command:

```sh
sudo ampy -p /dev/ttyUSB0 put main.py 
```

## Troubleshooting

### Resetting Device

If for any reason your device is struct, you may need to reset and reflash it.

Sample instructions do accomplish it are below for different chipsets:

esp32:
```sh
wget http://micropython.org/resources/firmware/esp32-20171017-v1.9.2-279-g090b6b80.bin
sudo esptool.py -p /dev/ttyUSB0 -b 460800 erase_flash
sudo esptool.py -p /dev/ttyUSB0 -b 460800 write_flash --flash_mode dio 0x1000 esp32-*.bin
```

esp8266:
```sh
wget http://micropython.org/resources/firmware/esp8266-20170612-v1.9.1.bin
sudo esptool.py -p /dev/ttyUSB0 -b 460800 erase_flash
sudo esptool.py -p /dev/ttyUSB0 -b 460800 write_flash 0 esp8266-*.bin
```
