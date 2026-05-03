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
  default     = "t3.micro"
}

variable "tags" {
  type = map(string)
  description = "Tags for the instance"
  default = {
    Name      = "first-instance"
    Project   = "Zomato"
    #is_public = "false"
  }
}