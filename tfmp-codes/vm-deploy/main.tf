resource "aws_instance" "first" {
  ami             = local.ami
  instance_type   = var.instance_type
  key_name        = "tfm-key"
  security_groups = ["sg-0f14c077df77baf3d"]
  tags = {
    name = "first-instance"
  }

}

data "aws_ami" "amis" {
  name_regex = "^al2023-ami-2023.-[0-9]{3}"
}

output "myami" {
  value = data.aws_ami.amis
}