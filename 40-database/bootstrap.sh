#!/bin/bash

component=$1
dnf install ansible -y

ansible-pull -U https://github.com/vamsi562/ansible-roboshop-roles-tf.git -e component=$component main.yaml