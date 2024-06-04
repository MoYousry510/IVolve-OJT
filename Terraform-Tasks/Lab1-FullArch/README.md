## Creating a full infra-structure with VPC, 2-Subnets, IGW, Route Table, EC2 instance, Security group, and 2 RDS databases while utilising Variables in terraform.
### Step1: Initializing the Backend using Terraform init
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/d9b45836-953c-4eb7-addd-d9f5816a46e2)

## Step2: Terraform plan to get a better view of what we will create
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/2a60a233-f33b-4ef7-969e-72f6da732031)

## Step3: Terraform Apply 
### Note that the db password doesn't show cause we marked it as sensitive in the main.tf file 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/66160078-a196-4f43-8376-30f982f72b13)

## Step4: Check the aws console to make sure everything was created 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/2c2007f7-2c8a-41b1-b532-8052be0392e1)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/96ea6812-1635-4728-923f-224923f9a139)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/a820c3de-640f-4267-8a24-8ca914c0d829)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/ba2684b4-71aa-4ada-bb11-c7849e86690c)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/e7f06078-20d0-4996-875b-8110d120547d)

# Step5: Don't Forget terraform destroy 
