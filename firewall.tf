resource "aws_networkfirewall_firewall" "wordpress" {
  name                = "wordpress-nf"
  firewall_policy_arn = aws_networkfirewall_firewall_policy.wordpress.arn
  vpc_id              = aws_vpc.Project.id
  subnet_mapping {
    subnet_id = aws_subnet.public1.id
  }
}