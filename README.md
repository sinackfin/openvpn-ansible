# openvpn-ansible
Ansible OpenVPN playbook for install and configure openvpn 

Simple playbook to install and reconfigure OpenVPN server, Add new client to "clients" var to create new profile config.
If you want to revoke client's certificate just remove from "clients" var
All profile configs are in "~/client-configs/files/*.ovpn" on your host
add your remote host in inventory file and "remote_server" var