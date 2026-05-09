# resource "aws_instance" "first" {
#   for_each        = var.instances
#   ami             = data.aws_ami.amis.id
#   instance_type   = each.value.instance_type
#   key_name        = each.value.key_name
#   security_groups = local.security-groups
#   tags            = each.value.tags

# }

resource "aws_instance" "second" {
  for_each = local.config.vars.instances
  ami             = data.aws_ami.amis.id
  instance_type   = each.value.instance_type
  key_name        = each.value.key_name
  security_groups = local.security-groups
  tags            = each.value.tags
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