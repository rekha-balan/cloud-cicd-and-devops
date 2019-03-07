This repositories is for various examples of my DevOps and CI/CD automation codes

Linux academy video up to 2:51


# Ansible Concepts

Inventories, callsed using -i option, default /etc/ansible/hosts 
See copy of inventory file to get idea of the content 
Dynamic inventory - you can feed the inventory based on result of executable files 
e.g. ansible-playbook playbook.yml -i ./dynamic.py 
the outputs must be in json and will be executed using --list format 
and then will call --host [hostname] for the host information 

Modules - look at ansible website e.g. yum modules 
check common modules from Ansible documentation website; common ones include:
user
group
copy copy file to remove host
get_url download files from http/https/ftp to a remote node
htpasswd module for apache 
lineinfile - to manipulate file
ping 
script - runs a local script on a remote node after transferring it 
service - to work with unix service
apt (or yum)
shell - to run shell commands 
unarchive




Playbook should be idempotent - can be re-run again <br />
(if it gets a problem, make sure you do a check)

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
