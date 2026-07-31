output "subnet_id" {
  value = aws_subnet.main.id
}
output "subnet_cidr" {
  value = aws_subnet.main.cidr_block
}
output "availability_zone" {
  value = aws_subnet.main.availability_zone
}

