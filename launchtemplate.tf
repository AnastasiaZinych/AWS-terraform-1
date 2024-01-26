# Launch template
resource "aws_launch_template" "mlt" {
  name          =  "mlt"
  image_id      =  "ami-0587a19e199d10a2e"
  instance_type =  "t2.micro"
  key_name      =  "project"
  network_interfaces {
    associate_public_ip_address = true
    security_groups             = ["sg-09a43447ad95b8c3e"]
  }
}