# Geotagger

**1. Download Google location history**

[Google Takeout URL](https://takeout.google.com/settings/takeout/custom/location_history?pli=1)

**2. Geotag images**

```bash
./tag.sh Records.json PATH_TO_IMAGE_FOLDER
```

------------------

If you want to save your time by caching kml file, convert Records.json manually as below and pass it to `tag.sh`.

```bash
./json_to_kml -f kml Records.json Records.kml
./tag.sh Records.kml PATH_TO_IMAGE_FOLDER
```

[Forked from](https://github.com/Scarygami/location-history-json-converter)

