#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
	echo "Usage: $0 JSON_PATH KML_OUTPUT_PATH"
	exit 1
fi

touch "$2"

docker run -t --rm \
	--name timeline_to_kml \
	-v "$(realpath "$1"):/Input.json" \
	-v "$(realpath "$2"):/Output.kml" \
	hub.sixtyfive.me/timeline_to_kml --progress --input /Input.json --output /Output.kml
