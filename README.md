# Geotagger

**1. Download Google Timeline from your phone**

Navigate to: Settings -> Location -> Location services -> Timeline -> **Export Timeline data**

**2. Convert Timeline.json to kml**

```bash
./convert_to_kml.sh Timeline.json Timeline.kml
```

**3. Embed location data to photos**

```bash
./tag.sh Timeline.kml PATH_TO_IMAGE_FOLDER
```

------------------

You may need to build this docker image by yourself.
In this case, try

```bash
docker build -t hub.sixtyfive.me/geotagger .
```
