temperature-humidity-monitor
============================
This is a script to track the temperature and humidity from a DHT11 or DHT22 sensor, using a Raspberry-Pi
It's based on the following Adafruit-Tutorial:
https://learn.adafruit.com/downloads/pdf/dht-humidity-sensing-on-raspberry-pi-with-gdocs-logging.pdf

It has been extended to the functionality to log the values to a RRD-Database

Prerequisites
====
```
git clone https://github.com/adafruit/Adafruit_Python_DHT.git
cd Adafruit_Python_DHT
sudo apt-get upgrade
sudo apt-get install build-essential python-dev
sudo python setup.py install
```

Installation
====
```
git clone https://github.com/brueni/temperature-humidity-monitor
```
Create your RRD-File using init-rrd1 (change name and location as desired)
Test if your sensor works, using this...
```
sudo ./get_sensor_values.py xx y
```
where xx is your sensor type (11 for DHT11, 22 for DHT22 or 2302 for AM2302), and y your GPIO-Port

Add two lines to your crontab, one for update_rrd.sh, one for export_rrd.sh, so both get executed every 5 minutes.
update_rrd gets your current sensor values and writes it in your RRD
export_rrd creates the xml with your data, used by the web-graph
