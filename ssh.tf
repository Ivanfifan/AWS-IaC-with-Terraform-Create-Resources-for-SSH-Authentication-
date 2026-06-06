resource "aws_key_pair" "cmtr-6akiyfai-keypair" {
	key_name   = "cmtr-6akiyfai-keypair"
  public_key = var.ssh_key

  tags = {
    Project = "epam-tf-lab"
    ID      = "cmtr-6akiyfai"
  }
}