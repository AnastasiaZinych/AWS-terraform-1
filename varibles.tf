variable "path_to_public_key" {
  description = "public key location on terraform instance"
  type        = string
  default     = "/home/ec2-user/.ssh/id_rsa.pub"
}

variable "sec_group_name" {
  description = "please provide a sec_group_name information"
  type        = string
  default     = "my_sg"
}