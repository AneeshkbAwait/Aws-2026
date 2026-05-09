locals {
  security-groups = ["launch-wizard-1"]
  config = yamldecode(file("${path.module}/10-vars.yaml"))
}