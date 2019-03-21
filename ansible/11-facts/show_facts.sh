ansible -i hosts server -m setup

ansible localhost -m setup -a "filter=ansible_date_time"