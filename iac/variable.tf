variable "aws_profile" {
  type = string
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "cidrs for public subnets"
  default     = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "cidrs for private subnets"
  default     = ["172.16.127.0/24", "172.16.128.0/24", "172.16.129.0/24"]
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
