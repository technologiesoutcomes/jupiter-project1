terraform {
  backend "s3" {
    bucket  = "technologiesoutcomes-terraform-backend"
    encrypt = true
    key     = "3tiers/application/application-terraform.tfstate"
    region  = "eu-west-1"
    #dynamodb_table = "technologiesoutcomes-3tier-terraform-backend"
  }
}

data "terraform_remote_state" "remote" {
  backend = "s3"
  config = {
    bucket = "technologiesoutcomes-terraform-backend"
    key    = "3tiers/baseinfra/baseinfra-terraform.tfstate"
    region = "eu-west-1"
  }
}
