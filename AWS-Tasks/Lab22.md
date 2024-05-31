## The Purpose of this Lab is to create an s3 bucket and enable Versioning and Logging Through AWS-CLI 

### Step1: Make Sure you have Aws installed and configured 

### Step2: Create the bucket 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/af33d12e-2642-43c8-be6f-784abd5f391c)

### Step3: Enable Versioning 
```
aws s3api put-bucket-versioning --bucket yousry-bucket --versioning-configuration Status=Enabled
```
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/b6582f6c-9223-4205-8b88-d557f3adccee)

### Step4: Enable Logging
#### create log-bucket > aws s3api create-bucket --bucket yousry-log-bucket
```
aws s3api put-bucket-logging --bucket yousry-bucket --bucket-logging-status "{\"LoggingEnabled\":{\"TargetBucket\":\"yousry-log-bucket\",\"TargetPrefix\":\"logs/\"}}"

```
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/00165217-f18e-44d5-b7fc-efdaf1ff5643)

### Step5: Upload a picture and see what happens 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/0d669623-f71a-444a-bb83-0bc9a5bc1b4b)

#### Confirm that Picture was uploaded
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/ebef6824-2ef6-44ba-9055-e6bfec1304d2)














