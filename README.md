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
Sample /etc/ansible/host file
````

#Apple PC
[brd]
172.16.12.244
[brd:vars]
ansible_ssh_user=admin
ansible_ssh_pass=password
ansible_network_os=ios

#Windows Server
[server]
172.16.12.254
[server:vars]
ansible_ssh_user=Admin
ansible_ssh_pass=password
ansible_ssh_port=5986
ansible_connection=winrm
ansible_winrm_server_cert_validation=ignore

#IPv6 ADDRESS
[test]
#fe80::898f:e9fa:4f8f:3ace
2002:6464:65f1:c:898f:e9fa:4f8f:3ace
#172.16.2.174
#172.16.101.65
#172.16.2.77
#172.16.2.157
[test:vars]
ansible_ssh_user=CharusatApps
ansible_ssh_pass=test
ansible_ssh_port=5986
ansible_connection=winrm
ansible_winrm_server_cert_validation=ignore

# Windows PC
[715B]
172.16.2.101
172.16.2.102
172.16.2.103
172.16.2.104
172.16.2.105
[715B:vars]
ansible_ssh_user=Administrator
ansible_ssh_pass=password
ansible_ssh_port=5986
ansible_connection=winrm
ansible_winrm_server_cert_validation=ignore

[715A]
172.16.2.126
172.16.2.127
172.16.2.128
172.16.2.129
172.16.2.130
[715A:vars]
ansible_ssh_user=Administrator
ansible_ssh_pass=password
ansible_ssh_port=5986
ansible_connection=winrm
ansible_winrm_server_cert_validation=ignore

[715C]
172.16.2.176
172.16.2.177
172.16.2.178
172.16.2.179
172.16.2.180
[715C:vars]
ansible_ssh_user=Administrator
ansible_ssh_pass=password
ansible_ssh_port=5986
ansible_connection=winrm
ansible_winrm_server_cert_validation=ignore

[715D]
172.16.2.151
172.16.2.152
172.16.2.153
172.16.2.154
172.16.2.155
[715D:vars]
ansible_ssh_user=CharusatApps
ansible_ssh_pass=password
ansible_ssh_port=5986
ansible_connection=winrm
ansible_winrm_server_cert_validation=ignore
#ansible_winrm_operation_timeout_sec: 200
#ansible_winrm_read_timeout_sec: 250

[716A]
172.16.2.26
172.16.2.27
172.16.2.28
172.16.2.29
172.16.2.30
[716A:vars]
ansible_ssh_user=Administrator
ansible_ssh_pass=password
ansible_ssh_port=5986
ansible_connection=winrm
ansible_winrm_server_cert_validation=ignore

# Cisco Switch
[716Bswip]
#CEIT-716-1 ansible_host=172.16.8.169
[716Bswip:vars]
ansible_ssh_user=kalpesh
ansible_ssh_pass=password
#ansible_network_os=ios

[716B]
172.16.2.1
172.16.2.2
172.16.2.3
172.16.2.4
172.16.2.5
[716B:vars]
ansible_ssh_user=Administrator
ansible_ssh_pass=password
ansible_ssh_port=5986
ansible_connection=winrm
ansible_winrm_server_cert_validation=ignore

[ciscodevice]
172.16.8.168
[ciscodevice:vars]
ansible_ssh_user=kalpesh
ansible_ssh_pass=password
ansible_network_os=ios

[classroom]
172.16.2.67
172.16.2.68
[classroom:vars]
ansible_ssh_user=CharusatApps
ansible_ssh_pass=password
ansible_ssh_port=5986
ansible_connection=winrm
ansible_winrm_server_cert_validation=ignore

[facultyPC]
172.16.12.25  
172.16.12.37  
172.16.12.38  
172.16.12.54   
[facultyPC:vars]
ansible_ssh_user=CharusatApps
ansible_ssh_pass=password
ansible_ssh_port=5986
ansible_connection=winrm
ansible_winrm_server_cert_validation=ignore

[server]
172.16.12.254
[server:vars]
ansible_ssh_user=Administrator
ansible_ssh_pass=password
ansible_ssh_port=5986
ansible_connection=winrm
ansible_winrm_server_cert_validation=ignore

[cisco]
#CEIT-713-1 ansible_host=172.16.8.154

#CEIT-715A-1 ansible_host=172.16.8.163 #715C
#CEIT-715A-2 ansible_host=172.16.8.164 #Common Switch
#CEIT-715A-3 ansible_host=172.16.8.165 #715B

#CEIT-715B-1 ansible_host=172.16.8.166 #715D
#CEIT-715B-2 ansible_host=172.16.8.167 #715 Common Switch
#CEIT-715B-3 ansible_host=172.16.8.168 #715A

CEIT-716-1 ansible_host=172.16.8.169 #716B
#CEIT-716-2 ansible_host=172.16.8.170 #716 Common Switch
#CEIT-716-3 ansible_host=172.16.8.171 #716A

#RPSWITCH2 ansible_host=172.16.2.60 
#ansible_host=172.16.2.60 ansible_ssh_user=admin ansible_ssh_pass=charusat

#172.16.2.60


[cisco:vars]
ansible_ssh_user=kalpesh
ansible_ssh_pass=password
ansible_network_os=ios
#ansible_become: yes
#ansible_become_method: enable
#ansible_become_pass: password
#ansible_ssh_common_args: '-o ProxyCommand="ssh -W %h:%p -q bastion01"'

#ansible_user=admin
#ansible_ssh_pass=charusat

#ansible_ssh_user=ansible
#ansible_ssh_pass=password
#ansible_user=admin
#ansible_ssh_pass=password

#ansible_connection: network_cli
#ansible_network_os: ios
#ansible_user: ansible
#ansible_ssh_pass: password
#ansible_become: yes
#ansible_become_method: enable
#ansible_become_pass: password
#ansible_ssh_common_args: '-o ProxyCommand="ssh -W %h:%p -q bastion01"'

[facultyce]
172.16.12.54
172.16.12.56
172.16.12.126
172.16.12.180
172.16.12.151
[facultyce:vars]
ansible_ssh_user=CharusatApps
ansible_ssh_pass=password
ansible_ssh_port=5986
ansible_connection=winrm
ansible_winrm_server_cert_validation=ignore


````
