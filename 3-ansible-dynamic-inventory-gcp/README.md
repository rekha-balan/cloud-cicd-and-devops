Reference: 
https://docs.ansible.com/ansible/latest/scenario_guides/guide_gce.html#gce-dynamic-inventory

<pre>
pip install apache-libcloud
pip install pycrypto 

git clone https://github.com/ansible/ansible
copy ansible/contrib/inventory/gce.py
copy cp ansible/contrib/inventory/gce.ini

login to GCP console and create service account, download JSON key 

configure gce.ini 
gce_service_account_email_address = **service account** email 
gce_service_account_pem_file_path = path to JSON key
gce_project_id = project_id

export GCE_INI_PATH=/opt/ansible/gce.ini

Sample files included - project already deleted. 

./gce.py --list
</pre>

Ansible will check whether a file is executable. If executable, treat as dynamic inventory, otherwise will be treated as static inventory 
