# Launch template
resource "aws_launch_template" "mlt" {
  name          = "mlt"
  image_id      = "ami-0c5f64f4c16e68c88"
  instance_type = "t2.micro"
  key_name      = "project"
  network_interfaces {
    associate_public_ip_address = true
    security_groups             = ["sg-036a7f67f63d0bc40"]
  }
}