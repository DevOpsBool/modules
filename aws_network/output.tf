output "vpc_id" {
  value = aws_vpc.main.id
}

output "cidr_block" {
  value = aws_vpc.main.cidr_block
}

output "private_subnets" {
  value = aws_subnet.private_subnets[*].id
}
