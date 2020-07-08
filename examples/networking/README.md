# AWS Networking Example

This example creates AWS VPC resources, making a VPC in each of two regions and
then two subnets in each VPC in two different availability zones.

This example also demonstrates the use of modules to create several copies of
the same resource set with different arguments. The child modules in this
directory are:

* `region`: container module for all of the network resources within a region. This is instantiated once per region.
* `subnet`: represents a subnet within a given availability zone. This is instantiated twice per region, using the first two availability zones supported within the target AWS account.

Run it with profile support:
  1. Setup local credentials and config under ~/.aws/ as below:
  ```
:.aws $ pwd
~/.aws
:.aws $ ls
	config				credentials	
:.aws $ more config 
[default]
region = us-east-1
output = json
[profile user1]
region = us-east-2
output = json
:.aws $ more credentials 
[default]
aws_access_key_id = "replace it with your IAM user aws_access_key_id"
aws_secret_access_key = "replace it with your IAM user aws_secret_access_key"
[user1]
aws_access_key_id = "replace it with your IAM user aws_access_key_id"
aws_secret_access_key = "replace it with your IAM user aws_secret_access_key"
````
  2. Run the terraform with prfoile as the input variable
  ```
  $terraform apply -var "profile=user1"
  ```
