# VPC Resources
#  * VPC
#  * Subnets
#  * Internet Gateway
#  * Route Table
#

resource "aws_vpc" "myapp" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = var.tags
}

resource "aws_subnet" "myapp-subnet" {
  vpc_id     = aws_vpc.myapp.id
  cidr_block = "10.0.1.0/24"
}


resource "aws_internet_gateway" "myapp-igw" {
  vpc_id = aws_vpc.myapp.id

}

resource "aws_route_table" "myapp-rt" {
  vpc_id = aws_vpc.myapp.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myapp.id
  }
}

resource "aws_route_table_association" "myapp-rta" {
  subnet_id      = aws_subnet.myapp-subnet.id
  route_table_id = aws_route_table.myapp-rt.id
}

