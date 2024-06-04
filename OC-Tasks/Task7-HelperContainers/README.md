## Create a deployment for Jenkins with an initcontainer that sleeps for 10 seconds before the Jenkins container starts.Use readiness and livenessprobes to monitor Jenkins.Create a NodePortservice to expose Jenkins.Verify that the initcontainer runs successfully and Jenkins is properly initialized.
## What is the differnetbetween  readiness & liveness , init& sidecar container.
- ### Readiness Probe: It determines when a container is ready to serve traffic. It helps ensure that the container has completed its initialization and is prepared to handle requests.
- ### Liveness Probe: It checks if a container is still running and functioning properly. It helps identify and restart containers that are in a failed or unresponsive state.
- ### Init Container: It is a separate container that runs before the main container in a pod. Init containers are primarily used for performing initialization tasks, such as database migrations, downloading dependencies, or preparing the environment for the main container.
- ### Sidecar Container: It is an additional container that runs alongside the main container in a pod and shares the same lifecycle. Sidecar containers provide additional functionality or support to the main container, such as logging, monitoring, or data synchronization.

### First we create Our deployment and Service Files (Note the part included from deploymet specifying init container and propes )
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/4aefd8ba-f58f-4128-9ab0-e7676642a70a)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/428f3bbf-63ba-42ee-8cab-9a48c8066809)

### we then apply these files and wait for it to be ready 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/f6a47121-4bca-4448-8876-34802fa3dab4)

### we check the logs to see what actually happend 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/071e2c1e-7f75-4d69-adf8-b67df35c9ec7)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/31c773dd-66b8-48ef-854c-9e202dc6962e)

### we then portforward to the jenkins service to be able to see it working 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/294e3974-4b6f-4b3a-8a3f-5bfe88dfb688)

### Finally we check localhost:8080 , we notice thet Jenkins is Up and Running 
#### "The Password to unlock it could be found in previously mentioned logs"
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/7517fa13-3184-4e96-b2fe-0ae26e732fe1)
