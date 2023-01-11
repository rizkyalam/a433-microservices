# inisialisasi shell untuk mengakses script ini
#!/bin/sh

# build file menjadi docker image 
docker build -t ghcr.io/rizkyalam/karsajobs-ui:latest .

# login ke github packages
echo $PASSWORD_GITHUB_CONTAINER_REGISTRY | docker login ghcr.io -u rizkyalam --password-stdin

# push atau mengunggah image ke github packages
docker push ghcr.io/rizkyalam/karsajobs-ui:latest
