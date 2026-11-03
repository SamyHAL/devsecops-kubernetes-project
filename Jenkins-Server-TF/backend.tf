terraform {
  backend "s3" {
    bucket       = "devsecops-sam-tf-bucket"
    region       = "us-east-1"
    key          = "devsecops-kubernetes-project/Jenkins-Server-TF/terraform.tfstate"
    encrypt      = true
    use_lockfile = true
  }
  required_version = ">=1.14.0"
  required_providers {
    aws = {
      version = ">= 6.23.0"
      source  = "hashicorp/aws"
    }
  }
}
