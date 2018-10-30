provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "us-east-1"
}

resource "aws_instance" "jesser-testing" {
ami           = "ami-0ac019f4fcb7cb7e6"
instance_type = "t2.micro"
tags {
"Name" = "jesser-testing"
"Tag1" = "tag 1"
"Tag2" = "tag 2"
}
}
