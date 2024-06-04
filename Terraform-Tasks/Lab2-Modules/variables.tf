variable "instance_name" {
  description = "Name of ec2 instance"
  type        = string
}

variable "inbound" {
default     = ["0.0.0.0/0"]
}

variable "ami" {
  description = "Amazon machine image to use for ec2 instance"
  type        = string
  default     = "ami-011899242bb902164" # Ubuntu 20.04 LTS // us-east-1
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "db_user" {
  description = "username for database"
  type        = string
  default     = "yousry"
}

variable "db_pass" {
  description = "password for database"
  type        = string
  sensitive   = true
}
