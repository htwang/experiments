output "ec2_ip" {
  value = var.request_ec2 ? aws_spot_instance_request.this[0].public_dns : null
}