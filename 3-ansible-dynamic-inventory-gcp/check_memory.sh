export GCE_INI_PATH=/home/cabox/workspace/devops-and-cicd-stuff/3-ansible-dynamic-inventory-gcp/gce.ini
ansible all -i gce.py -a "free"
