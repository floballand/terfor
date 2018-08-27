#----TYPE IDENTIFICATION ---------
variable "public_key_path" {
  	description = "identification path"
	default="/home/flobal/.ssh"
}
variable "key_name" {
  description = "virginie.pem"
}

  #access_key = "ACCESS_KEY_HERE"
  #secret_key = "SECRET_KEY_HERE"
  #shared_credentials_file ="url credential"

#---------------------------------------
variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}
#---------------------------------------
#Distrib AMI
variable "aws_amis" {
  default = {
    us-east-1 = "ami-f973ab84" #Linux 2 LTS AMI Amazon (centos)
    us-east-2 = "ami-43a15f3e" #ubuntu 16.04 

  }
}

#Instances Type
variable "aws_bastion_instance" {
  default = "t2.micro" 
}
variable "aws_front_instance" {
  default = "t2.micro" 
}
variable "aws_bd_instance" {
  default = "rds.t2.micro" 
}
