provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "claim_dev_server" {
  ami           = "ami-00656d51d312f0dee"
  instance_type = "t2.micro"
  tags = {
    Name = "claim_dev_server"
  }
}
