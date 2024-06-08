## This Task involves Running a Pipeline on an EC2 slave 

### First we create the slave , and open ports 22 and 50000 for SSH and Slave connection

![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/f1c21c3e-41a9-4cf4-b529-323d39993718)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/d6e6398d-d8a3-4843-8dde-c575fd0fef7b)

### We then create an Ansible playbook to run on the ec2 and configure the tools needed for this task (Java17,Docker,OC-Cli) and run it, we see a success and the slave is now ready..
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/ec6b1f35-72c4-48c0-b4fc-9f3e93675329)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/9f48d622-26c0-49b0-a501-fa3833b04018)

### Making sure everything is done correctly :
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/7ca1963c-f45b-4634-8fef-05a3333d048b)

### Now we head to the master node , we add a Node and set name, label, and Remote Root Directory 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/46a514c6-2a71-449f-9591-089e7ba928d5)

### We then Set connection to SSH and give the Secret key, and set  Host Key Verification Strategy to none
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/8a5880a0-a711-4271-9734-17164a5d78d5)

### Finally we Launch the agent , we see we have the node in Idle state now , and with that we have finished setting up the slave connection

![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/81081e05-0b74-48ce-ace2-aa39592c0205)

### Now we need to Create a ServiceAccount Token to be able to access the oc cluster , we do that by creating a SA a Role And a RoleBinding , then a Secret to eextract the token and add it in credentials
#### we set it as Secret Text as shown 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/151e52b1-98ed-464e-a2ed-4205c5b72c66)

### we also need to create credentials for github and dockerhub 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/e39f01b2-4f64-49af-8c7c-1a732413ff86)

### as a last final step we need to set up our shared-library to execute repetitive commands like build push and deploy .

![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/eb450297-d033-4636-b62d-0d5827aa12d1)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/5156a9f7-a3f6-437a-be9c-9f79ec824918)


### we are now ready to create our pipeline (Jenkinsfile Provided), we create it using SCM and specify the repo with all our files and specify agent as our EC2 instance
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/2d68a6c6-058a-4a5a-a11d-5c48140f1bad)

### we then Run our pipeline (note that it's running on EC2), and wait for the success ! 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/54c6585a-7a5b-4242-8742-3f31a44dded4)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/4e1d400b-5594-4b15-aee6-13ceb2575a62)

### we then check if the cluster has the deployment 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/ea38f1e6-d450-46d0-b57b-84bb95cdba40)

### Try accessing the app , we see a success ! 

![6](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/3100d228-3399-4d73-a6e1-d762264543e8)



