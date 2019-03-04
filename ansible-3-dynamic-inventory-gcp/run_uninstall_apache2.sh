export GCE_INI_PATH=/home/cabox/workspace/devops-and-cicd-stuff/3-ansible-dynamic-inventory-gcp/gce.ini
ansible-playbook -i gce.py uninstall_apache2.yml 
