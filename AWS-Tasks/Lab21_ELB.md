# AWS Elastic Load Balancer Setup for Apache and Nginx Web Servers

This guide provides step-by-step instructions to set up an AWS Elastic Load Balancer (ELB) to distribute traffic between two EC2 instances, one running Apache and the other running Nginx. The instances are deployed across different Availability Zones (AZs) to ensure high availability and fault tolerance.

## Prerequisites

- AWS account with necessary permissions to create EC2 instances, security groups, and load balancers.
- Basic knowledge of AWS Management Console.
- SSH client to connect to EC2 instances.

## Steps to Set Up

### 1. Launch EC2 Instances

1. Launch two EC2 instances:
   - **Instance 1 (Apache)** in Availability Zone 1.
   - **Instance 2 (Nginx)** in Availability Zone 2.
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/f5e624a4-b074-487b-9c93-c0665cf9a0be)


### 2. Install Web Servers

#### On Instance 1 user data(Apache):

```sh
#!/bin/bash
sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
```

#### On Instance 2 user data (Nginx):
```sh
#!/bin/bash
sudo apt update
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
```
### 3. Configure Security Group
Create a Security Group allowing inbound traffic on ports 80 (HTTP) and 443 (HTTPS).
Attach this Security Group to both EC2 instances.
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/2b2e1e86-0b31-493f-87a9-05f450015664)


### 4. Target group: Create a new target group
Select the two EC2 instances (Apache and Nginx) and add them to the target group.
Review and Create:
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/8eff0336-50bb-42d1-bb98-5fc30401c172)


### 5. Create an Elastic Load Balancer (ELB)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/d2bb6ffa-e5b1-4d8a-ad26-fc16b60d1e2b)


### 6. Test the Load Balancer
Obtain the DNS name of the load balancer from the AWS Management Console.
Access the load balancer using the DNS name in your web browser:
The load balancer should distribute traffic between the Apache and Nginx servers.
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/b5dff07f-1ee4-4091-802a-edaa2436e120)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/2e13c80b-f05b-4e9b-b5cc-d19cca32ccff)
