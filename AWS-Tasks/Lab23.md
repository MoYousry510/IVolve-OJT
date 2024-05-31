## The Purpose of this Lab is to create a simple webapp that takes info from the user using Api-gw and Lambda and stores it in a dynamodb.

### First we need to create a Role for the Lambda to be able to exectue commands on the Dynamodb
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/ca0514e3-4640-43ed-b798-e6154f074873)

### Then we need to create our lambda function , you'll find the code under projectfunction.zip

### Next we create our Api-gw with two methods (GET,POST) 
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/77ae5f39-b265-4acf-8824-524dee37c2f2)

### Then we connect it to the Lambda function
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/18d7e345-4f42-4fb9-a0a3-aef5a1cf3d85)

### Lastly we create our Dynamodb Table and test for Connectivity Using Invoke URL
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/5567316b-5fc6-4142-8e20-8b76daac1ef2)
![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/5eeb4080-3186-4380-9286-7fc38ebda721)

![image](https://github.com/MoYousry510/IVolve-OJT/assets/80543993/d1e46965-ec5f-4b7b-bcaa-a507ae221173)

### As We can see the data has successfuly transferred to the DynamoDB.  


