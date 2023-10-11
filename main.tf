# resource "aws_instance" "myname" {
#   ami = "ami-067d1e60475437da2"  
#   instance_type = "t2.micro"              
#   tags = {
#     Name = "Dev"
#   }
# }

resource "aws_security_group" "allow_my_port" {
  name = var.sg_name

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}