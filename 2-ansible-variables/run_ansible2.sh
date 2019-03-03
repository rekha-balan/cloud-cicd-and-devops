ansible -b -i hosts server2 -m file -a "path={{ log_folders }} state=directory"

