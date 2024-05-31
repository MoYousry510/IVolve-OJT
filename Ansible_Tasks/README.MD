# ANSIBLE 

## This Folder Contains Ansible Playbooks Used to Automate Configuration Management.


### First Task was to create an Nginx Webserver 
### Seconed Task was to install mysql , start and enable it, then create a user with high privileges.

## In order to use this play books you need the following 

#### Python on All Nodes(Managed and Control)
#### Installing Ansible on Control Node
#### Ensuring you can SSH from the Control Node to all the Managed nodes

## Installing Python
### sudo apt update 
### sudo apt install python3 -y


## Installing Ansible 

### sudo apt update 
### sudo apt install ansible -y

## Setting SSH Connection
### From control node : 
#### ssh-keygen
#### ssh-copy-id     ManagedNodeUser@ManagedNodeIP


