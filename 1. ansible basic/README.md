How to use: 
* setup an Ansible control server and any number of servers used to run commands again
* setup an ansible user on all servers
* set the ansible user to be able to sudo
* share an ssh key from the ansible control server to the targets

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install python -y
ssh-keygen
cat ~/.ssh/id_rsa.pub

ssh-copy-id IP_ADDRESS_OF_NODE

sudo vi /etc/ansible/hosts
[group_name]
ALIAS IP_ADDRESS_OF_NODE


[webservers]
WEB1 192.168.1.100
WEB2 192.168.1.101
WEB3 192.168.1.102

ansible -m ping all




