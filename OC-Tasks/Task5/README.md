## Create a ServiceAccount. Define a Role named pod-reader allowing read-only access to pods in the namespace. Bind the pod-reader Role to the ServiceAccount . Get ServiceAccounttoken. Make a Comparison between role & role binding and cluster role & cluster role binding.

### First we create all our files
- Service Account
  ![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/83554b98-0997-4a78-80c6-9901fee5e4f4)
- Secret
  ![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/729e21c9-98c7-44d0-b5eb-7d1e8c573ffe)

- Role
 ![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/5b5fb03b-b4ea-4147-a15b-3b013b07361d)
- RoleBinding
  ![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/bbdf04e6-3eb7-47c8-a110-a082044e647f)

### we then extract our token for the service account
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/e539ecf1-ab21-4951-a3d7-374cb9a61117)
