# create ec2 using tfvars -> config from vars.tfvars
# resource "aws_instance" "first" {
#   for_each        = var.instances
#   ami             = data.aws_ami.amis.id
#   instance_type   = each.value.instance_type
#   key_name        = each.value.key_name
#   security_groups = local.security-groups
#   tags            = each.value.tags
# }

# Create ec2 by reading a single yaml -> -> config from 10-vars.yaml
# resource "aws_instance" "second" {
#   for_each = local.config.vars.instances
#   ami             = data.aws_ami.amis.id
#   instance_type   = each.value.instance_type
#   key_name        = each.value.key_name
#   security_groups = local.security-groups
#   tags            = each.value.tags
# }


# Creating ec2 by reading multiple yaml files (vm code block are scattered across these yamls)
# Real production method -> config from 10-vars.yaml & 10-vars1.yaml
resource "aws_instance" "second" {
  for_each        = local.all_instances
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

# output "myami" {
#   value = data.aws_ami.amis
# }