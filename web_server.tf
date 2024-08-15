resource "aws_instance" "web_server" {
  ami           = "ami-0ae8f15ae66fe8cda"
  vpc_security_group_ids = [aws_security_group.web_server_sg.id]
  key_name      = "mac_terraform_ec2"
  instance_type = "t2.micro"
  user_data     = file("user_data.sh")
}