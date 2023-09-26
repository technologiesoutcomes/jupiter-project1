# Generic variables
region = "eu-west-1"

# VPC variables
vpc_name             = "threetiersvpc"
vpc_cidr             = "10.0.0.0/16"
vpc_azs              = ["eu-west-1a", "eu-west-1b"]
vpc_public_subnets   = ["10.0.1.0/24", "10.0.2.0/24"]
vpc_private_subnets  = ["10.0.11.0/24", "10.0.12.0/24"]
vpc_database_subnets = ["10.0.21.0/24", "10.0.22.0/24"]
vpc_tags             = { "created-by" = "terraform" }
