# transmission-daemon Dockerfile

This repository contains Dockerfile of transmission-daemon for build an ARMv7 (armhf) compatible Docker image.

### Usage

- Replace `PATH_TO_DOWNLOAD_FOLDER` and `PATH_TO_TRANSMISSION_SETTINGS` with your local folders.
- Start server:
```bash
docker run -d --name transmission \
  -p 9091:9091 \
  -p 51413:51413/tcp \
  -p 51413:51413/udp \
  -v PATH_TO_DOWNLOAD_FOLDER:/root/Downloads \
  -v PATH_TO_TRANSMISSION_SETTINGS:/etc/transmission \
  ivanmarban/armhf-transmission
```
- Stop server:
```bash
docker stop transmission
```
- Edit settings.json on `PATH_TO_TRANSMISSION_SETTINGS` and specify your settings.
- Start server:
```bash
docker start transmission
```
- Access to the web interface:
```bash
http://ip_address:9091/
```
