terraform {
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.73.0"
    }
}
  
  required_version = ">= 1.0"
   backend "s3" {
     bucket = "your-bucket-name-terraform-state-1a"
     key    = "terraform/state" 
     region = "var.aws_region" 
   }
 }


# Define provider
provider "aws" {
  region = var.aws_region
}
