Roles is a structured way to "include" file. You must structure your directory like this: 

<pre>
role_name
-- defaults
-- files 
-- handlers 
-- meta
-- tasks 
-- templates
-- vars

Roles will look for main.yml.
You will only need the folder that you need, not all folders 
</pre>

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


create user e.g. cabox which is the SSH user for Code Anywhere
sudo useradd -m -d /home/cabox cabox
sudo passwd cabox
sudo adduser <username> sudo
sudo apt-get install python -y

sudo visudo 
add at the bottom $USER ALL=(ALL) NOPASSWD: ALL
Where $USER is your username in your system.

ssh-copy-id IP_ADDRESS_OF_NODE
</pre>
