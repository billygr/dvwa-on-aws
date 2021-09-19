# General

Running dvwa on aws based on the work of

[Infrastructure as Code: Setting up a web application penetration testing laboratory](https://avasdream.engineer/terraform-hacking-lab)

# Requirements

- Terraform is installed and in the current \$PATH
- You know your AWS access and secret keys. [Official Documentation](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html)

# Setup

1. Edit variables.tf End enter your own access and secret key
2. If you don't have a default VPN in region eu-west-1, create a default vpc in the region eu-west-1 using the shell 
https://eu-west-1.console.aws.amazon.com/cloudshell/home?region=eu-west-1# 
aws ec2 create-default-vpc
3. Execute `terraform init`
4. Execute `terraform apply`

