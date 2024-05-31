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
