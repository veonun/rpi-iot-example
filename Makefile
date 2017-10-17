#Makefiles awesome
#save file as Makefile
#run make command

Name=esp32-2017017-v1.9.2.278-g090b6b80.bin

deploy:
    wget -c http://micropython.org/resources/firmware/${NAME}
    esptool.py -p /dev/ttyUSB0 -b 460800 erase_flash
    esptool.py -p /dev/ttyUSB0 -b 460800 write_flash --flash_mode dio 0x1000 ${NAME}
    ampy -p /dev/ttyUSB0 put main.py
    ampy -p /dev/ttyUSB0 put boot.py 
