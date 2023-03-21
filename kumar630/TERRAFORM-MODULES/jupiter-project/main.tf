# configure aws provider
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.59.0"
    }
  }
}

 # create modules
 module "vpc" {

    source                    = "../modules/vpc"
region = var.region
vpc_cidr = var.vpc_cidr
project_name = var.project_name
public_subnet_az1_cidr = var.public_subnet_az1_cidr
public_subnet_az2_cidr = var.public_subnet_az2_cidr
private_app_subnet_az1_cidr = var.private_app_subnet_az1_cidr
private_app_subnet_az2_cidr = var.private_app_subnet_az2_cidr
private_data_subnet_az1_cidr = var.private_data_subnet_az1_cidr
private_data_subnet_az2_cidr = var.private_data_subnet_az2_cidr
 }
 # create nat gateway
 module "nat-gateway" {
   source                  = "../modules/nat-gateway"
public_subnet_az1_id       =  module.vpc.public_subnet_az1_id
internet_gateway           =  module.vpc.internet_gateway
public_subnet_az2_id       =  module.vpc.public_subnet_az2_id
vpc_id                     =  module.vpc.vpc_id
private_app_subnet_az1_id  =  module.vpc.private_app_subnet_az1_id
private_data_subnet_az1_id =  module.vpc.private_data_subnet_az1_id
private_app_subnet_az2_id  =  module.vpc.private_app_subnet_az2_id
private_data_subnet_az2_id =  module.vpc.private_data_subnet_az2_id
 }
 # create security group
 module "security_group" {
   source = "../modules/security-groups"
   vpc_id = module.vpc.vpc_id
   
 }
 #  Create ECS Task Execution Role 
 module "ecs_tasks_execution_role" {
   source = "../modules/ECS Task Execution Role"
   project_name = module.vpc.project_name
   
 }
 # create s3 buket
 module "aws_s3_bucket" {
  source = "../modules/s3"

   
   
 }
 # create acm
 module "acm" {
  source = "../modules/acm"
  domain_name = var.domain_name
  alternative_name = var.alternative_name
  
 }