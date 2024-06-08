# Make a Comparison between Deployment and StatefulSet. Create a YAML file for a MySQL StatefulSetconfiguration. Write a YAML file to define a service for the MySQL StatefulSet.

#### Like a Deployment, a StatefulSet manages Pods that are based on an identical container spec. Unlike a Deployment, a StatefulSet maintains a sticky identity for each of its Pods. These pods are created from the same spec, but are not interchangeable: each has a persistent identifier that it maintains across any rescheduling.
If you want to use storage volumes to provide persistence for your workload, you can use a StatefulSet as part of the solution. Although individual Pods in a StatefulSet are susceptible to failure, the persistent Pod identifiers make it easier to match existing volumes to the new Pods that replace any that have failed

### Service:
- clusterIP: None: Creates a headless service, necessary for StatefulSets to provide stable network identities.
- selector: Ensures that the service selects pods with the app: mysql label.
- port: Exposes port 3306 for MySQL.
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/003f969e-0aa5-4496-b56c-470d5c3bad02)






### StatefulSet:

- serviceName: Points to the headless service created above.
- replicas: Specifies the number of MySQL replicas.
- template: Pod template that defines how the pods will be created.
containers:
- volumeMounts: Mounts the persistent volume at /var/lib/mysql.
- volumeClaimTemplates:
Creates a PersistentVolumeClaim (PVC) for each replica.

#### Access Mode: ReadWriteOnce
- Single Node Access: Only one node can mount the volume in read-write mode at any given time. This ensures that no other nodes can write to the volume concurrently, which prevents potential data corruption and ensures data consistency.
- Exclusive Access: This is suitable for MySQL because it generally requires exclusive access to its data files to maintain consistency and integrity.
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/783ff6df-182a-43f7-b279-cb57a2eb561d)


### Testing by Creating a DB , deleting the pod , testing the new pod the replica creates.
### First ensure that every thing was setup correctly : 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/764c678a-2424-4d09-9e86-f35c46ec4a4e)
### we then go into one of the pods and create a DB
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/4832b72d-2c8c-41f4-8d50-888850867675)
### Then we delete the pod , wait for the replica to add it again , then test it 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/fd9442ad-402a-4335-9271-5c939362e246)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/6e674355-024c-460f-901d-18042c0a905f)
### Note the the data presists even after the pod has been deleted and recreated
