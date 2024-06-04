variable "aws_profile" {
  type = string
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "cidrs for public subnets"
  default     = ["172.31.1.0/24", "172.31.2.0/24", "172.31.3.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "cidrs for private subnets"
  default     = ["172.31.127.0/24", "172.31.128.0/24", "172.31.129.0/24"]
}

variable "vpc_name" {
  type    = string
  default = "htwang-vpc"
}

variable "azs" {
  type    = list(string)
  default = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable "my_ip" {
  type = string
}

variable "public_key_file" {
  type = string
}

variable "request_ec2" {
  type = bool
}

variable "domain" {
  type    = string
  default = "xmzdhz"
}
