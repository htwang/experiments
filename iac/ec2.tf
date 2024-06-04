# security group for ssh
resource "aws_security_group" "this" {
  name   = "default sg ${var.vpc_name}"
  vpc_id = aws_vpc.this.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.my_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# ssh key pair
resource "aws_key_pair" "this" {
  key_name   = "htwang-dev"
  public_key = file(var.public_key_file)
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

# spot request
resource "aws_spot_instance_request" "this" {
  count                = var.request_ec2 ? 1 : 0
  ami                  = data.aws_ami.ubuntu.image_id
  spot_price           = "0.016"
  instance_type        = "t2.micro"
  spot_type            = "one-time"
  wait_for_fulfillment = "true"
  key_name             = aws_key_pair.this.key_name

  security_groups = [aws_security_group.this.id]
  subnet_id       = aws_subnet.public[0].id
}
