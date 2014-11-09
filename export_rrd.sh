#!/bin/bash

#exports the data in the RRD to an xml, which can pe parsed by highcharts

rrdtool xport -s now-1d -e now --step 900 \
DEF:a=temp-humid.rrd:temp:AVERAGE \
XPORT:a:"Testraum" > www/temperature1d.xml

rrdtool xport -s now-3h -e now --step 300 \
DEF:a=temp-humid.rrd:temp:AVERAGE \
XPORT:a:"Testraum" > www/temperature3h.xml

rrdtool xport -s now-1d -e now --step 300 \
DEF:a=temp-humid.rrd:humid:AVERAGE \
XPORT:a:"Testraum" > www/humid1d.xml

