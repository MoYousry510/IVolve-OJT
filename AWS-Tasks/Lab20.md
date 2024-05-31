## Step 1: Set Up Your VPC 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/ce86b643-8c97-4eb0-8012-b9f64d62008a)
## Create a Public & a Private Subnet
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/8b6ab849-b377-46f2-9665-469a406b3300)
## Create an Internet Gateway and Attach It to VPC
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/a35f2537-db39-408d-a756-c01003fdd0c9)
## Create a Route Table for the Public Subnet
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/21ca624c-668c-486e-a8ef-ef47589f10d1)
## Make Sure Networking Diagram is Correct 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/e123d39c-67b6-4b1b-afe5-fdd18cd255bb)
## Create a Security Group to Allow Inbound SSH Traffic 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/be1b32eb-89b4-4bff-8fd5-6029d8636442)
## Step 2: Launch a Bastion Host in the Public Subnet
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/16fb98e2-83ac-43f5-9ddc-5d18225611dd)
## Step 3: Launch an EC2 Instance in the Private Subnet
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/bd58a531-5414-4edc-882c-89bd029656eb)

## Ensuring Both EC2 are Running 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/b6b13867-d497-4e66-bac1-a30dd4f364d1)

## Step 4: Connect to the Private EC2 Instance via the Bastion Host
### Connecting to Bastion host ssh -i SSH-KEY.pem ec2-user@34.205.155.197 , From Bastion Host get SSH-KEY.pem from localhost and ssh to Private EC2 with "ssh -i SSH-KEY.pem ec2-user@10.0.1.175"
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/50151295-5850-475d-b90a-aabc150abeca)








