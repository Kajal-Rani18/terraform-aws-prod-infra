output "vpc_id" {
  description = "id of the vpc"
  value = aws_vpc.main.id
}
output "vpc_arn" {
  description = "arn of the vpc"
  value = aws_vpc.main.arn
}
output "vpc_cidr_block" {
  description = "cidr block of the vpc"
  value = aws_vpc.main.cidr_block
}