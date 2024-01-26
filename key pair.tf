# Create key pair
# resource "aws_key_pair" "project" {
#   key_name   = "project"
#   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGuA7aopqVHTVL1fh3IYZ2zjzoWGIG4kclxYjNyh2RrYP0QbLHy2iw1+Bl5lSHei1sKyrujJEorXHPAwMG0by+GBwrFUQp6sJzT/qmT7k0N/RI8Ptk70u0eTk4W9Y0l+Y0duZ/QYGOnNvdGnEl/cXLBTQJBB4DTHh6VBzK+YzbZYie3AulY7t345lvDI/FcnBY+hcti8BxWkM6oCUJqOjzOE53NKoni7R0UqnBwsdxSdvCK1KONbLJZVTGCU9fWGeFlSNZPjb8mTQlhGTuVZkl/3IcbSMXA9MZt6yhhTZDDNh2GSlpIt5RXcBz47szDSIa94Qp+Zh2nRq9LxK6TzhR ec2-user@ip-172-31-27-35.us-west-1.compute.internal"
# }
resource "aws_key_pair" "project" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_rsa.pub")
}