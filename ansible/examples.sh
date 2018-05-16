ansible default -m ping
ansible default -m command -a 'echo "Hello world"a'
ansible default -a 'uptime'
ansible default -a "tail /var/log/dmesg"
#Become superuser
ansible default -b -a "whoami"
ansible default -b -m apt -a name=nginx
ansible default -b -a "apt-get update"
ansible default -b -m service -a "name=puppet state=restarted"
ansible default -b -m service -a "name=nginx state=restarted"

ansible-playbook nginx-playbook.yaml
ansible-doc copy
ansible-doc service

ansible default -m setup
ansible default -m setup -a 'filter=ansible_eth*'

ansible-playbook --list-tasks debug.yaml
