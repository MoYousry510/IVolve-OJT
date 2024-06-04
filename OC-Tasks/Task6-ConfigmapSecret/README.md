## Create a namespace called nti and Apply resource quota to limit resource usage within the namespace. Create a Deployment in this namespace for the MySQL pod that uses the ConfigMap and Secret.DefineMySQL database name and user in a ConfigMap. Store the MySQL root password and user password in a Secret, Resources Requests: CPU: 0.5 vcpu Mem: 1G, Resources Limits: CPU: 1 vcpu Mem:2G. Exec into the MySQL pod and verify the MySQL configuration.

### first we need to create the name space 'nti'
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/2a072743-5c73-4864-95b3-7dff7a557297)
### we then set a ResourceQuota for that name space 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/bba98a88-af0f-4945-a595-ec0c350b37be)
### Create a ConfigMap and Secret to set the db Env-Variables 'note that the passwords are encoded'
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/8dde35a2-b360-4acd-96e5-82052a868e93)
### Then we create and apply the deployment 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/f599f0e4-d826-4a36-9511-f9e84b9f7ac7)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/f94c2c41-de6e-433f-8c62-beb33ca8690a)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/6a5531e5-4a20-4ead-b067-3ffb2cd32947)
### Finally we Test by Execing into the pod with our root username and password, we see a success.
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/fe2716e8-1744-422a-b1dc-76afd0354b5f)
