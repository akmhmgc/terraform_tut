resource "aws_instance" "example" {
  ami           = "ami-08a706ba5ea257141"
  instance_type = "t2.micro"
}
