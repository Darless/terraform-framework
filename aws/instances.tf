resource "aws_instance" "terraform-1" {
  ami           = "ami-a9d276c9"
  instance_type = "t2.micro"
  subnet_id     = "${var.subnet_id}"
  tags {
    Name = "Demo Instance"
  }
}
