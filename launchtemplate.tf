# Launch template
resource "aws_launch_template" "my_launch_template" {

  name          = "my_launch_template"
  image_id      = "ami-0c5f64f4c16e68c88"
  instance_type = "t2.micro"
  key_name      = "cat ~/.ssh/id_rsa.pub"
  network_interfaces {
    associate_public_ip_address = true
    security_groups             = ["aws_security_group.my_sg.id"]
  }
}