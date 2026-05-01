variable "region" {
  type        = string
  description = "aws region"
  default     = "ap-south-1"
}

# variable "ami" {
#   type        = string
#   description = "Ami name"
# }

variable "instance_type" {
  type        = string
  description = "type of the instance"
  default     = "t2.micro"
}