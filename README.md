# oomnitza_container
Dockerfile for a Ubuntu container with all dependencies needed for running the Oomnitza connector.

Using this image should hopefully save any Oomnitza admins a bit of time in spinning up the environment needed to run the Oomnitza Connector.

docker run --name=oomnitza_container
-dit --name=oomnitza_container
-v /path/to/oomnitza/config.ini:/opt/oomnitza-connector/config.ini
-p 80:8000 --restart="always"
chefaustin/oomnitza_container:latest
