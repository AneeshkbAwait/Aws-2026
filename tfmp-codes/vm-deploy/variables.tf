variable "region" {
  type        = string
  description = "aws region"
  default     = "ap-south-1"
}

variable "my_access_key" { # export TF_VAR_my_access_key=$(aws secretsmanager get-secret-value --secret-id AWS_Programmatic_Secrets --query SecretString  --output text | jq -r '.AWS_ACCESS_KEY')
  type      = string
  sensitive = true
}

variable "my_secret_access_key" { #export TF_VAR_my_secret_access_key=$(aws secretsmanager get-secret-value --secret-id AWS_Programmatic_Secrets --query SecretString  --output text | jq -r '.AWS_SECRET')
  type      = string
  sensitive = true
}

# # variable "ami" {
# #   type        = string
# #   description = "Ami name"
# # }

# variable "instance_type" {
#   type        = string
#   description = "type of the instance"
#   default     = "t3.micro"
# }

# variable "tags" {
#   type = map(string)
#   description = "Tags for the instance"
#   default = {
#     Name      = "first-instance"
#     Project   = "Zomato"
#     #is_public = "false"
#   }
# }

variable "instances" {
  type = map(object({
    instance_type = string
    key_name      = string
    tags          = map(string)
  }))
  default = {
    vm1 = {
      instance_type = "t3.micro"
      key_name      = "tfm-key"
      tags = {
        Name    = "vm1"
        Project = "zomato"
      }
    }

    vm2 = {
      instance_type = "t2.micro"
      key_name      = "tfm-key"
      tags = {
        Name    = "vm2"
        Project = "uber"
      }
    }
  }
}