terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

variable "sg-id" {

  
}
module Network {

	source = "./Network-module"
	
 	
}

module compute {

	source 	      = "./Compute-module"
	instance_name = var.instance_name
	
	
 	
}

module RDS {

	source  = "./rds-module"
	db_pass = var.db_pass
	db_user = var.db_user
	
 	
}
