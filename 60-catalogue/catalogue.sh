#!/bin/bash

component=$1
environment=$2
REPO_URL=https://github.com/vamsi562/ansible-roboshop-roles-tf.git
REPO_DIR=/opt/roboshop/ansible
ANSIBLE_DIR=ansible-roboshop-roles-tf

dnf install ansible -y

mkdir -p $REPO_DIR

mkdir -p /var/log/roboshop/

touch ansible.log

cd $REPO_DIR

if [ -d $ANSIBLE_DIR ]; then
    cd $ANSIBLE_DIR
    git pull
else
    git clone $REPO_URL
    cd $ANSIBLE_DIR
fi

ansible-playbook -e component=$component -e env=$environment main.yaml

# ansible-pull -U https://github.com/vamsi562/ansible-roboshop-roles-tf.git -e component=$component main.yaml