terraform {
    backend "s3" {
        bucket = "terraform-state-aneesh"
        key = "state/terraform.tfstate"
        region = "ap-south-1"
        encrypt = true
        use_lockfile = true
    }
}