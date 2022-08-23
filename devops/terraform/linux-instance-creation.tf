provider "aws" {
  profile    = "terraform_user"
  access_key = "AKIAXBQCCALYXXPYAAFE"
  secret_key = "Sbpp0qHzHGg2C3J+YHJ3GkhVMfLi2Web01xOP5xE"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami             = "ami-090fa75af13c156b4"
  instance_type   = "t2.micro"
  key_name        = "terraform"
  security_groups = ["${aws_security_group.allow_ssh.name}"]
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "allow ssh traffic"

  ingress {
    from_port = 22 # by default the linux server listens to TCP port 22 for RDP
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }
}
