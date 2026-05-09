locals {
  security-groups = ["launch-wizard-1"]

  # this is for reading a single yaml -> 10-vars.yaml
  # config = yamldecode(file("${path.module}/config/10-vars.yaml")) 

  # if the config is with multiple yaml files then use below -> 10-vars.yaml & 10-vars1.yaml
  yaml_files = fileset("${path.module}/config", "*.yaml")

  yaml_data = [
    for file in local.yaml_files :
    yamldecode(file("${path.module}/config/${file}"))
  ]

  all_instances = merge([
    for data in local.yaml_data :
    data.vars.instances
  ]...)

}