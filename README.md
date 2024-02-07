# Ansible Installtion 
   ````
      sudo apt-get update
      sudo apt-get install software-properties-common
      sudo apt-add-repository ppa:ansible/ansible
      sudo apt-get update
      apt-get install ansible
      apt-get install python-winrm
      apt-get install python3-winrm
      apt-get install python-pip
     pip install "pywinrm>=0.3.0"
     vi /etc/ansible/hosts
     vi ping.yml
     ansible-playbook ping.yml
````
Ping.yml
````
   ---
   # This Playbook uses the win_ping module to test connectivity of windows host
     - name: Ping
       hosts: all
       tasks:
       - name: ping
         ping:
````
run Ping PlayBook
````
 ansible-playbook /etc/ansible/yml/ping.yml 
````
