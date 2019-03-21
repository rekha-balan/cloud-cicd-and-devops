ansible-playbook -i hosts install-apache.yml --skip-tags "customise"
ansible-playbook -i hosts install-apache.yml --tags "customise"

