provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "demo" {
  name = "demo_sg"
}

output "sg" {
  value = aws_security_group.demo
}

output "sg_id" {
  value = aws_security_group.demo.id
}

output "boolean" {
  value = true
}
