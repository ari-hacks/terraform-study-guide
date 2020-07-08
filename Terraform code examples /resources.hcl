#Resource declarations can include a number of advanced features, but only a small subset are required for initial use
resource "aws_instance" "web" {
  ami           = "ami-a1b2c3d4"
  instance_type = "t2.micro"
}