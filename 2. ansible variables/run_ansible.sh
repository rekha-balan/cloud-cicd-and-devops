ansible -b -i hosts server -m file -a "path={{ log_folders }} state=directory"

