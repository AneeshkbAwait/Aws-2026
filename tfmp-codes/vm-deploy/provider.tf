provider "aws" {
  region     = var.region
  # access_key = var.AWS_ACCESS_KEY        # not needed in github actions as secrets are passed in workflow file which will handle it
  # secret_key = var.AWS_SECRET_ACCESS_KEY # not needed in github actions as secrets are passed in workflow file which will handle it
}