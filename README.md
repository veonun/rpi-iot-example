# rpi-iot-example
## IOT-example lab

```# WeMos D1
from time import sleep
from machine import Pin
red_led = Pin(12, mode=Pin.OUT)    # D9 on Wemos D1, LED on the SOM
green_led = Pin(14, mode=Pin.OUT)   # D13 on Wemos D1, LED connected to SCK
blue_led = Pin(13, mode=Pin.OUT) 

for i in range(0,100):
    red_led.value(1) # Polarity inverted, pin sinks 3.3v
    green_led.value(0) 
    blue_led.value(0) # Pin sources voltage
    sleep(0.2)

    red_led.value(1)
    green_led.value(0)
    blue_led.value(1)
    sleep(0.2)

    red_led.value(1)
    green_led.value(1)
    blue_led.value(0)
    sleep(0.2)
```


```# WeMos D1
from time import sleep
from machine import Pin
red_led = Pin(12, mode=Pin.OUT)    # D9 on Wemos D1, LED on the SOM
green_led = Pin(14, mode=Pin.OUT)   # D13 on Wemos D1, LED connected to SCK
blue_led = Pin(13, mode=Pin.OUT) 


def set_rgb(r,g,b):
    red_led.value(1-r)
    green_led.value(1-g)
    blue_led.value(1-b)
    
for i in range(0,100):
    set_rgb(1,0,0)
    sleep(0.2)
 
    set_rgb(0,1,0)
    sleep(0.2)

    set_rgb(0,0,1)
    sleep(0.2)
```

```# WeMos D1
from time import sleep
from machine import Pin
red_led = PWM(12, mode=Pin.OUT)    # D9 on Wemos D1, LED on the SOM
green_led = PWM(14, mode=Pin.OUT)   # D13 on Wemos D1, LED connected to SCK
blue_led = PWM(13, mode=Pin.OUT) 

def set_rgb(r,g,b):
    red_led.duty(1023-int(r*1023))
    green_led.duty(1023-int(g*1023))
    blue_led.duty(1023-int(b*1023))
 
while True:   
    for j in range(0,100):
    set_rgb(j/100.0, 0, 0)
    sleep(0.02)
    
    set_rgb(0,j/100.0, 0)
    sleep(0.02)
 ```
  

