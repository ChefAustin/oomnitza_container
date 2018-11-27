# oomnitza_container
 Dockerfile for a Ubuntu container with all dependencies needed for the Oomnitza connector.

Note: This is a work in progress, but should be in a usable state.

Using this image should hopefully save any Oomnitza users a bit of time in spinning up the machine needed to leverage the Oomnitza Connector. As it stands currently, the vendor-provided guide is out-of-date and needs to be updated; until that happens, this should ease the pain.

docker run --name=oomnitza \
  -dit --name=oomnitza \
  -v /path/to/oomniza/config.ini:/opt/oomnitza-connector-master/config.ini \
  -p 80:8000
  --restart="always" \
  chefaustin/oomnitza:latest
