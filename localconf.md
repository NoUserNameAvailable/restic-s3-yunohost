export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH="/mnt/c/Users/mat/"
export PATH="$PATH:/mnt/c/Program Files/Oracle/VirtualBox"

vagrant up --provider=virtualbox

Blog pour la config windows
https://thedatabaseme.de/2022/02/20/vagrant-up-running-vagrant-under-wcd sl2/

wsl2 snap
https://github.com/DamionGans/ubuntu-wsl2-systemd-script
https://wsl.dev/wsl2-lxd-funtoo/
_______________
https://learn.microsoft.com/en-us/windows/wsl/basic-commands

post installation https://yunohost.org/fr/install/hardware:vps_debian
yunohost tools postinstall --domain yunohost.test.local --password yunohost --force-password --ignore-dyndns


Création du password
# local host
openssl genrsa -out yunohost-pri:wqvate-key.key 2048
ssh-copy-id -i id_rsa.pub root@192.168.56.11

#######  minio
sudo lxc launch images:debian/bullseye/amd64 minio




## MC

### Create alias for the connection
mc alias set miniotest http://localhost:9000 minioadmin minioadmin

### Create a remote bucket
mc mb miniotest/bucket1

### Add file into the bucket



## Post creation actions
1. run post install script
yunohost tools postinstall -d 'test.local' -u 'testuser' -F 'testuser' -p 'testuser' --ignore-dyndns --force-diskspace

2. Set port forwarding on 9001 for minio web UI (optional).

3. MANUAL : add dev repository
lxc config device add ynh-dev-bullseye-unstable application_dev disk source=/mnt/c/projet2022/restic-s3-yunohost path=/restic-s3-yunohost
