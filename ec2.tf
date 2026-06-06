resource "aws_instance" "cmtr-6akiyfai-ec2" {
  key_name                    = aws_key_pair.cmtr-6akiyfai-keypair.key_name
  vpc_security_group_ids      = [data.aws_security_group.cmtr_sg.id]
  subnet_id                   = data.aws_subnet.cmtr_public_subnet.id
  ami                         = "ami-0de864d6a3bd20ea8"
  instance_type               = "t3.small"
  associate_public_ip_address = true
  tags = {
    Name    = "${var.id}-ec2"
    Project = var.project
    ID      = var.id
  }
}