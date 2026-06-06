data "aws_vpc" "cmtr_vpc" {
  filter {
    name   = "tag:Name"
    values = ["cmtr-6akiyfai-vpc"]
  }
}

data "aws_subnet" "cmtr_public_subnet" {
  vpc_id = data.aws_vpc.cmtr_vpc.id

  filter {
    name   = "map-public-ip-on-launch"
    values = ["true"]
  }

  filter {
    name   = "availabilityZone"
    values = ["eu-west-1a"]
  }
}

data "aws_security_group" "cmtr_sg" {
  name   = "cmtr-6akiyfai-sg"
  vpc_id = data.aws_vpc.cmtr_vpc.id
}
