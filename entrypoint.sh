#!/bin/sh

if [ ! -f Records.kml ]; then
	python location_history_json_converter.py \
		-f kml \
		Records.json \
		Records.kml
else
	echo "Records.kml found!"
fi

exiftool -geotag Records.kml \
	-r Images \
	-api GeoMaxIntSecs=10800 
