#!/bin/bash

if [ -z $1 ] || [ -z $2 ]; then
	echo "Usage: $0 JSON_OR_KML_PATH IMAGE_FOLDER_PATH"
	exit 1
fi

if [[ "$1" =~ ".kml" ]]; then
	docker run --rm \
		--name geotagger \
		-v "$(realpath "$1"):/Records.kml" \
		-v "$(realpath "$2"):/Images" \
		hub.sixtyfive.me/geotagger
else
	docker run --rm \
		--name geotagger \
		-v "$(realpath "$1"):/Records.json" \
		-v "$(realpath "$2"):/Images" \
		hub.sixtyfive.me/geotagger
fi
