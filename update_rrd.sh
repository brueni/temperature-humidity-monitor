#!/bin/bash
cd `dirname $0`
#Execute every 300sec to update values from python-script to RRD
#Store Output from python file in 'output' variable
output=$(python get_sensor_values.py 11 4)

#execute RRD update
$(rrdtool update data/temp-humid.rrd $output)

echo $output > www/data/rack_current.txt
echo $output
