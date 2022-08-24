terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile    = "tf_user"
  access_key = "AKIAXBQCCALY7OFFUFHT"
  secret_key = "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"
  region     = "us-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-018d291ca9ffc002f"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
