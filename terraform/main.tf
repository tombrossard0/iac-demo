provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  skip_credentials_validation = true
  endpoints {
    ec2 = "http://ip10-0-13-4-d33s7d9ntdlhbpdsdbfg-4566.direct.lab-boris.fr"  
  }
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

resource "aws_instance" "demo" {
  ami           = var.ami_id
  instance_type = "t2.micro"
}
