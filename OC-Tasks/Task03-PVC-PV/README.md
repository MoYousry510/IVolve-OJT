## Create an OC PVC to add presisting storage to the pods then a deployment with 1 replica using the NGINX image. Exec into the NGINX pod and create a file at /usr/share/nginx/html/hello.txt with any content, verify the file is served by NGINX using curl localhost/hello.txt. Delete the NGINX pod and wait for the deployment to create a new pod then exec into the new pod and verify the file at /usr/share/nginx/html/hello.txt is present.
### In very simple terms 
- PVs are the actual storage resources available in the cluster.
- PVCs are requests made by pods to use some of that storage.
- Storage classes define the types and characteristics of available storage and how it's provisioned.
### First we create a pvc
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/dc5ce5a2-bf7a-4d82-a2a8-256b94386646)
### Then we create a deployment file linking our mount volume to the pvc
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/b4295a86-3c7e-4726-aef5-128579daa677)
### We then apply deployment, exec into the pod and add our file
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/21c55bfc-8219-4e40-89aa-73ea961e00ea)
### Finally we delete the pod, wait for it to be recreated by the deployment, and then exec into it and check for file.
### As we can see the file presists
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/d4d5e52f-1ca0-4973-bbb7-cf28d0ed2699)
