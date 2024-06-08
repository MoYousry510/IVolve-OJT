## Build image from Dockerfile and push it to your DockerHub. Create a deployment using this custom NGINX image.Create a service to expose the deployment.Define a networkpolicythat allow traffic to the NGINX pods only from other pods within the same namespace.Enable the NGINX Ingress controllerusing Minikube addons. Create an Ingressresource. Update /etc/hosts to map the domain to the Minikube IP address.Access the custom NGINX service via the Ingress endpoint using the domain name.

### First we build and push the image
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/a7c7c6a8-7d82-4404-b43d-9ec3f7ee7bb8)
### we Then create the deployment, Service, Policy, and Ingress
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/ce509353-ed51-4d9c-b341-49d631e3e500)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/049036be-600d-42f0-807c-d72b98331b44)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/892574e0-df77-443d-9bd8-95d2f37c86f2)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/4f7b3669-0e35-4036-8b27-8fe667a81d48)

### we should see a namespace with the following
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/f0e37fdb-f0ad-4fdd-a821-22b77b3241b2)

### we then add an Entry in our /etc/hosts file with "minikube-ip  local domain" 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/4c385122-87b4-4a24-a0ed-a2ae696f63b0)
### lastly we check connectivity, we see a success.
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/1c075bff-0b22-40ff-993b-8700f67a5543)
