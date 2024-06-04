resource "aws_db_instance" "RDS" {
  count 	       = 2
  allocated_storage    = 10
  db_name              = "mydb${count.index}"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = var.db_user
  password             = var.db_pass
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}
