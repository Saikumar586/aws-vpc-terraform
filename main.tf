resource "aws_vpc" "main" {
  
    cidr_block = var.cidr_blocks
     enable_dns_hostnames = var.enable_dns_hostnames
    enable_dns_support = var.enable_dns_support

    tags = merge(var.vpc_tags, var.default_tags)

}


resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    default_tags,ig_tags)

}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
 count =  length(var.public_subnet )#"10.0.1.0/24"
 cidr_block = var.public_subnet[count.index]
 availability_zone = var.azs[count.index]
    tags = merge(
    default_tags, {Name = var.public_subnet_tags [count.index]}
    )
  }


resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
 count =  length(var.private_subnet )#"10.0.1.0/24"
 cidr_block = var.private_subnet[count.index]
 availability_zone = var.azs[count.index]
  tags = merge(
    default_tags, {Name = var.private_subnet_tags [count.index]}
    )
}

resource "aws_subnet" "database" {
  vpc_id     = aws_vpc.main.id
 count =  length(var.database_subnet )#"10.0.1.0/24"
 cidr_block = var.database_subnet[count.index]
 availability_zone = var.azs[count.index]
  tags = merge(
    default_tags, {Name = var.database_subnet_tags [count.index]}
    )
}


