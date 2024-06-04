resource "aws_instance" "ec2_instance" {
  ami         		        = var.ami
  instance_type 		= var.instance_type
  associate_public_ip_address   = true
  subnet_id    			= aws_subnet.subnet1.id
  vpc_security_group_ids 	= [module.Network.sg.id]
  tags = {
      Name = var.instance_name 
    }
}

