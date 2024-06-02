## Deploy NGINX with 3 replicas. Create a service to expose NGINX deployment. Use port forwarding to access NGINX service locally. Update NGINX image to Apache. View deployment's rollout history. Roll back NGINX deployment to the previous image version and Monitor pod status to confirm successful rollback

### First we use " OC apply -f deployment.yml " to create deployment with 3 Nginx replicas and Listening on port 80
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/719fd4cd-2098-40d3-a83f-32ffb01ffadc)

### we Then create a service to be able to access our app 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/e8f519f2-8297-4d2a-80d9-070cbaae1079)

### We need one more step to be able to access our app wich is 
```
oc port-forward svc/my-app-service 8080:80
```
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/3c78c387-7430-49e3-821e-db97cb1d2b2a)

### Then we can check our localhost:8080 we see a success

![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/b0eadd68-a120-4283-a82d-b33014ca3510)

### we then change the deployment file to use apache instead 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/e3a0c8f3-5874-4f05-8b75-69711ad151ac)

### after changing deployment we need to re-establish port forwarding using "oc port-forward svc/my-app-service 8080:80" then we check we se a success
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/24bbe06a-9623-4d77-8548-858ea790081f)

### we then use "oc rollout undo deployment/my-app-deployment" to revert back to nginx , re-establish our port forwarding then check , we see a success
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/318a6256-7dc4-4833-9392-855bbc05850e)







