# In this task we install ArgoCD and ELK on OC clusters.

## First we make sure that the minikube cluster is up and running !
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/878bb1fa-cfa8-46ee-a5c2-9ef2b00d2d5f)

## Then we create a name space called ArgoCD to install all the components 
```
oc create namespace argocd
```

## We then apply the Operator yaml file ! 
```
oc apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```
## Then we check cluster status ! we can see that all the components has been installed ! 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/578045a8-f23f-46c3-a6ee-319e81208df7)

## we get the link for the login page using 
```
oc port-forward svc/argocd-server -n argocd 8080:443

```
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/cdd0e3d8-bd41-4770-9aed-bed1e0b3602d)

## in order to optain admin password we use 
```
oc get secret argocd-initial-admin-secret -n argocd -o=jsonpath='{.data.password}' | base64 -d
```
## we can now access the argocd ui , and the mission is done ! 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/b9fd7535-c33b-4d28-b15f-6ecb2f5ad212)

# Next part is setting up ELK ! 
## First we Install custom resource definitions
```
oc create namespace elastic-system
oc create -n elastic-system -f https://download.elastic.co/downloads/eck/2.13.0/crds.yaml
```
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/00a50ab4-4a56-4565-a4ef-430c3a026537)


## We then Install the operator with its RBAC rules:
```
oc apply -n elastic-system -f https://download.elastic.co/downloads/eck/2.13.0/operator.yaml
```
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/58a43655-6fc4-4306-ad60-2f9bc10eaad5)

### we have now finished ! you can enter the following command to monitor logs ! 
```
oc -n elastic-system logs -f statefulset.apps/elastic-operator
```
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/9830bd20-b26b-41e3-b5d1-7e128ac5c058)
