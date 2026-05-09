locals {
  security-groups = ["launch-wizard-1"]
  # config = yamldecode(file("${path.module}/*.yaml")) # this is single yaml

  # if the config is with multiple yaml files then use below
  yaml_files = fileset("${path.module}/", "*.yaml")

  yaml_data = [
    for file in local.yaml_files :
    yamldecode(file("${path.module}/${file}"))
  ]

  all_instances = merge([
    for data in local.yaml_data :
    data.vars.instances
  ]...)

}