#!/bin/bash

#exports the data in the RRD to an xml, which can pe parsed by highcharts

rrdtool xport -s now-3h -e now --step 300 \
DEF:a=temp-humid.rrd:temp:AVERAGE \
XPORT:a:"Testraum" > export/temperature3h.xml

rrdtool xport -s now-3h -e now --step 300 \
DEF:a=temp-humid.rrd:humid:AVERAGE \
XPORT:a:"Testraum" > export/humid3h.xml

