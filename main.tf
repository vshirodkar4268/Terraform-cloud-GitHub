terraform {
    required_version = "~> 1.0.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
       region = "us-east-1" 
        profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-0ed05376b59b90e46" 
	instance_type = "t2.micro"
  #count = 3
}
