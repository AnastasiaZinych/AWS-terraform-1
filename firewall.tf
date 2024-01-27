# resource "aws_networkfirewall_firewall" "wordpress" {
#   name                = "wordpress-policy"
#   description         = "Firewall policy for WordPress application"
#   vpc_id              = aws_vpc.Project.id
#   subnet_mapping {
#     subnet_id = aws_subnet.public3.id
#   }
  
#   firewall_policy_arn = aws_networkfirewall_firewall_policy.wordpress.arn  # Specify the ARN of the firewall policy
# }