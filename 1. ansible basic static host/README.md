1. setup an Ansible control server and any number of servers used to run commands again
2. Run the run_playbook.sh

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

# Concepts

Inventories, callsed using -i option, default /etc/ansible/hosts 
See copy of inventory file to get idea of the content 
Dynamic inventory - you can feed the inventory based on result of executable files 
e.g. ansible-playbook playbook.yml -i ./dynamic.py 
the outputs must be in json and will be executed using --list format 
and then will call --host [hostname] for the host information 

Modules - look at ansible website e.g. yum modules 

Variables - must start with letter, can contain letters, numbers and underscores. Can be defined in the inventory or playbook. Can be referenced using jinja2 template system 

Facts - way of getting data from systems, can be used in playbook variables, if disabled speed up execution in playbook "gather_facts: no" 

Play is task. Playbook contains plays. 

Configuration file by default /etc/ansible/ansible.cfg ; read everytime playbook is run  
If you have more than one config files: ANSIBLE_CONFIG environment variable, ansible.cfg in current directory, .ansible.cfg in home directory, /etc/ansible/ansible.cfg 

Templates - definition and set of params for running an ainsible job if you want to execute same job many times. You can use variables to populate content in template 

Handler - to handle error conditions, called at the end of each play 

Roles - playbook that's split into multiple files, use for packaging into re-usable compoents 

Ansible Galaxy is a repository for roles 

Vault - secure store for sensitive data e.g. passwowrds or encrypted files. Command line ansible-vault and use --ask-vault-pass 
