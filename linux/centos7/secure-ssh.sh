useradd -m -d /home/$1 -s /bin/bash $1
mkdir /home/$1/.ssh
cp public-keys/id_rsa.pub /home/$1/.ssh/authorized_keys
sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
service ssh reload



