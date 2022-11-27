# inisialisasi shell untuk mengakses script ini
#!/bin/sh

# build file menjadi docker image 
# lalu memberi nama image yaitu item-app dengan tag v1
docker build -t item-app:v1 .

# melihat seluruh daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format github packages
docker image tag item-app:v1 ghcr.io/rizkyalam/item-app:v1

# login ke github packages
echo $PASSWORD_GITHUB_CONTAINER_REGISTRY | docker login ghcr.io -u rizkyalam --password-stdin

# push atau mengunggah image ke github packages
docker push ghcr.io/rizkyalam/item-app:v1
