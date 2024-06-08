## Create a DaemonSet YAMLfile with a Pod template containing an Nginx container in openshift and verify the number of pods. Using minikube, Taint the Minikube node with a specific key-value pair ‘color=red’to simulate a tainted node. Create a pod with toleration ‘color=blue’ and notice what is the status of the pod.

### What's a DaemonSet ?
 - DaemonSet is a Kubernetes resource that ensures a copy of a specific pod is running on each node (or a subset of nodes) in a cluster. It is typically used to run system-level or background tasks that need to be present on every node, such as logging agents, monitoring agents, or network services.
### Taints and Tolerations vs. Node Affinity:

- ### Control Mechanism:
     - Taints and Tolerations: Nodes can repel a set of pods unless they tolerate the taint.
     - Node Affinity: Pods can specify preferences or requirements about where they should be scheduled.
- ### Use Cases:

     - Taints and Tolerations: Used to prevent pods from being scheduled on unsuitable nodes.
     - Node Affinity: Used to attract pods to nodes with certain labels.
- ### Complexity:

     - Taints and Tolerations: Generally simpler, more straightforward for exclusion.
     - Node Affinity: More flexible and expressive for placement preferences and requirements.

### First we create a DaemonSet and notice how many pods are created... we will notice only one pod which indicates only one node exists in the cluster 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/10b6db1d-6411-4384-aa33-572b155d2e40)

### We then taint this node red 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/103c3489-2342-4b2b-8a70-7ff5329a2fde)

### Then we create a Blue-toleration Pod and a Red-toleration pod and notice the behaviour, Note that the blue pod can't be created as there is one node only that is red tainted.
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/f9ffff87-83fe-427a-8b9a-da9782c22ddb)
