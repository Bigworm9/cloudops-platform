resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name        = "cloudops-vpc"
    Environment = "dev"
    Project     = "cloudops-platform"
    ManagedBy   = "Terraform"
    Owner       = "JP"
    Purpose     = "EKS-Learning-Platform"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-2"
  }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "cloudops-igw"
    Environment = "dev"
    Project     = "cloudops-platform"
    ManagedBy   = "Terraform"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "cloudops-public-rt"
    Environment = "dev"
    Project     = "cloudops-platform"
    ManagedBy   = "Terraform"
  }
}

resource "aws_route" "public_internet_access" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main.id
}

resource "aws_route_table_association" "public_subnet_1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_subnet_2" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public.id
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.11.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name        = "cloudops-private-subnet-1"
    Environment = "dev"
    Project     = "cloudops-platform"
    ManagedBy   = "Terraform"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.12.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name        = "cloudops-private-subnet-2"
    Environment = "dev"
    Project     = "cloudops-platform"
    ManagedBy   = "Terraform"
  }
}