output "ec2_ip" {
  value = aws_spot_instance_request.this.public_ip
}