#!/bin/bash

MINIO_ROOT_USER="minioadmin"
MINIO_ROOT_PASSWORD="minioadmin"

# Create User minio
sudo useradd -m minio
usermod -aG sudo minio
chsh -s /bin/bash minio

# Use minio user
su - minio

# install minio
wget https://dl.min.io/server/minio/release/linux-amd64/archive/minio_20221129234049.0.0_amd64.deb -O minio.deb
sudo dpkg -i minio.deb
mkdir ~/minio
# launch it
minio server ~/minio --console-address :9090

# install minio client mc
curl https://dl.min.io/client/mc/release/linux-amd64/mc \
  --create-dirs \
  -o $HOME/minio-binaries/mc

chmod +x $HOME/minio-binaries/mc
echo "export PATH=$PATH:$HOME/minio-binaries/" >> ~/.profile

# test with mc --help




