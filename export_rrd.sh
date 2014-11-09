#!/bin/bash

#exports the data in the RRD to an xml, which can pe parsed by highcharts

#Temp, 3h
rrdtool xport -s now-3h -e now --step 300 \
DEF:a=temp-humid.rrd:temp:AVERAGE \
XPORT:a:"Testraum" > www/data/t3h.xml

#Temp, 24h
rrdtool xport -s now-1d -e now --step 900 \
DEF:a=temp-humid.rrd:temp:AVERAGE \
XPORT:a:"Testraum" > www/data/t24h.xml

#Temp, 48h
rrdtool xport -s now-2d -e now --step 1800 \
DEF:a=temp-humid.rrd:temp:AVERAGE \
XPORT:a:"Testraum" > www/data/t48h.xml

#Temp, 1w
rrdtool xport -s now-1week -e now --step 7200 \
DEF:a=temp-humid.rrd:temp:AVERAGE \
XPORT:a:"Testraum" > www/data/t1w.xml

#Temp, 1m
rrdtool xport -s now-1month -e now --step 14400 \
DEF:a=temp-humid.rrd:temp:AVERAGE \
XPORT:a:"Testraum" > www/data/t1m.xml

#Temp, 3m
rrdtool xport -s now-3month -e now --step 43200 \
DEF:a=temp-humid.rrd:temp:AVERAGE \
XPORT:a:"Testraum" > www/data/t3m.xml

#Temp, 1y
rrdtool xport -s now-1year -e now --step 86400 \
DEF:a=temp-humid.rrd:temp:AVERAGE \
XPORT:a:"Testraum" > www/data/t1y.xml

#Humid, 3h
rrdtool xport -s now-3h -e now --step 300 \
DEF:a=temp-humid.rrd:humid:AVERAGE \
XPORT:a:"Testraum" > www/data/h3h.xml

#Humid, 24h
rrdtool xport -s now-1d -e now --step 900 \
DEF:a=temp-humid.rrd:humid:AVERAGE \
XPORT:a:"Testraum" > www/data/h24h.xml

#Humid, 48h
rrdtool xport -s now-2d -e now --step 1800 \
DEF:a=temp-humid.rrd:humid:AVERAGE \
XPORT:a:"Testraum" > www/data/h48h.xml

#Humid, 1w
rrdtool xport -s now-1week -e now --step 7200 \
DEF:a=temp-humid.rrd:humid:AVERAGE \
XPORT:a:"Testraum" > www/data/h1w.xml

#Humid, 1m
rrdtool xport -s now-1month -e now --step 14400 \
DEF:a=temp-humid.rrd:humid:AVERAGE \
XPORT:a:"Testraum" > www/data/h1m.xml

#Humid, 3m
rrdtool xport -s now-3month -e now --step 43200 \
DEF:a=temp-humid.rrd:humid:AVERAGE \
XPORT:a:"Testraum" > www/data/h3m.xml

#Humid, 1y
rrdtool xport -s now-1year -e now --step 86400 \
DEF:a=temp-humid.rrd:humid:AVERAGE \
XPORT:a:"Testraum" > www/data/h1y.xml


