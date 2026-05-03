resource "aws_instance" "first" {
  ami             = data.aws_ami.amis.id
  instance_type   = var.instance_type
  key_name        = "tfm-key"
  security_groups = local.security-groups
  tags = var.tags

}

data "aws_ami" "amis" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }

}

output "myami" {
  value = data.aws_ami.amis
}