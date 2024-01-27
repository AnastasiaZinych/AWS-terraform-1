# Launch template
resource "aws_launch_template" "mlt" {
  name          =  "mlt"
  image_id      =  "ami-0587a19e199d10a2e"
  instance_type =  "t2.micro"
  key_name      =  aws_key_pair.project.id
  network_interfaces {
    associate_public_ip_address = true
    security_groups             = [aws_security_group.my_sg.id]
  }
}