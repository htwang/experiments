resource "aws_route53_zone" "private" {
  name    = "${var.domain}.local"
  comment = "private dns for ${var.domain}"

  vpc {
    vpc_id = aws_vpc.this.id
  }
}
