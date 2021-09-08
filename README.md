```
# Download Voicevox
# https://drive.google.com/drive/folders/1b214Pvfnj0rKPmLnD86JKIfGrd-no9Lk

docker build -t voicevox-engine-wine-docker
docker run -e PORT=8080 -p 8080:8080 voicevox-engine-wine-docker
```