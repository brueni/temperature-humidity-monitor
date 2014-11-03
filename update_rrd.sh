#!/bin/bash

#Execute every 300sec to update values from python-script to RRD

output=$(python get_sensor_values.py 11 4)

echo "test"
echo $output
