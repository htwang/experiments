variable "aws_profile" {
  type = string
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "cidrs for public subnets"
  default     = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "cidrs for private subnets"
  default     = ["192.168.127.0/24", "192.168.128.0/24", "192.168.129.0/24"]
}

variable "vpc_name" {
  type    = string
  default = "htwang-vpc"
}

variable "azs" {
  type    = list(string)
  default = ["us-east-2a", "us-east-2b", "us-east-2c"]
}