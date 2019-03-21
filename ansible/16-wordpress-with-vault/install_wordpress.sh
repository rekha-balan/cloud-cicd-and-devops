ansible-galaxy -p roles install oefenweb.wordpress
ansible-playbook -i hosts playbook.yml --ask-vault-pass 
# the vault password is pass123 
# I've encrypted playbook.yml for example 
# ansible-vault encrypt playbook.yml
