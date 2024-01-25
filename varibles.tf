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

variable "public_subnet1" {
  description = "please provide a subnet information"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet2" {
  description = "please provide a subnet information"
  type        = string
  default     = "10.0.2.0/24"
}

variable "public_subnet3" {
  description = "please provide a subnet information"
  type        = string
  default     = "10.0.3.0/24"
}
variable "private_subnet1" {
  description = "please provide a subnet information"
  type        = string
  default     = "10.0.4.0/24"
}

variable "private_subnet2" {
  description = "please provide a subnet information"
  type        = string
  default     = "10.0.5.0/24"
}

variable "private_subnet3" {
  description = "please provide a subnet information"
  type        = string
  default     = "10.0.6.0/24"
}
