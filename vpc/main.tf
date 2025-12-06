resource "aws_vpc" "main" {

  cidr_block = var.cidr_block
  enable_dns_support=true
  enable_dns_hostnames = true

  tags={
    Name="${var.project}-vpc"
  }
}

resource "aws_subnet" "public"{

    count = length(var.public_subnet)
    vpc_id= aws_vpc.main.id
    cidr_block=var.public_subnet[count.index]
    map_public_ip_on_launch=true


    tags={
        Name="${var.project}-public -${count.index}"
    }
}

resource "aws_subnet" "private"{

    count= length(var.private_subnet)
    vpc_id= aws_vpc.main.id
    cidr_block= var.private_subnet[count.index]
    availability_zone = var.azs[count.index]
    
    tags={
        Name="${var.project}-private -${count.index}"
    }
}

