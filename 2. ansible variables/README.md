1. setup an Ansible control server and any number of servers used to run commands again
2. Run the run_ansible.sh

<pre>
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install ansible python -y
ssh-keygen
cat ~/.ssh/id_rsa.pub

login to node servers
if required, change  /etc/ssh/sshd_config PasswordAuthentication yes
and sudo systemctl restart sshd
Revert changes to ssh_config later  
sudo visudo 
add at the bottom $USER ALL=(ALL) NOPASSWD: ALL
Where $USER is your username in your system.

create user e.g. cabox which is the SSH user for Code Anywhere
sudo useradd -m -d /home/cabox cabox
sudo passwd cabox
sudo adduser <username> sudo
sudo apt-get install python -y

ssh-copy-id IP_ADDRESS_OF_NODE
</pre>