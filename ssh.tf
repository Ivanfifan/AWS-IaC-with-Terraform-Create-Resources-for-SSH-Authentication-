resource "aws_key_pair" "cmtr-6akiyfai-keypair" {
  key_name   = "${var.id}-keypair"
  public_key = var.ssh_key

  tags = {
    Name    = "${var.id}-keypair"
    Project = var.project
    ID      = var.id
  }
}