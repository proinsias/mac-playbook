#!/usr/bin/env bash

if ! type ansible > /dev/null 2>&1 ; then
    sudo easy_install pip
    sudo pip install ansible
fi

sudo mkdir -p /etc/ansible

# echo 'ansible_python_interpreter="/usr/bin/env python"'

{
echo '[local]'
echo 'localhost ansible_connection=local'
} | sudo tee -a /etc/ansible/hosts > /dev/null

mkdir -p ~/.ansible/roles

{
echo '[defaults]'
echo 'roles_path = ~/.ansible/roles'
echo ''
echo '[ssh_connection]'
echo 'pipelining = True'
echo 'control_path = /tmp/ansible-ssh-%%h-%%p-%%r'

} | tee -a ~/.ansible.cfg > /dev/null
