terraform {
  required_providers {
    aws = {
      source  = "HASHICORP/AWS"
      version = "~> 4.3"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "kenny-opsguru"
    workspaces {
      name = "tfc-lab-global-iam"
    }
  }
}
