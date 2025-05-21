provider "aws" {
  region = "us-east-1" # Change as needed
}

data "aws_vpc" "default" {
  default = true
}
resource "aws_instance" "centos_stream8" {
  ami           = "ami-05f2b469e504202f7"
  instance_type = "t3.nano"
  key_name      = "<key-pair-name>" # Replace with your key pair name
  tags = {
    Name = "CentOS-Stream8-Instance"
  }
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  associate_public_ip_address = true
}
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = data.aws_vpc.default.id
  ingress {
    description = "SSH"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "public_ip" {
  value = aws_instance.centos_stream8.public_ip
}
