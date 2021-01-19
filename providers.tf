terraform {
  required_version = "~> 0.13.0"
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "~> 1.14.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.0.1"
    }
    tls = {
      source = "hashicorp/tls"
      version = "~> 3.0.0"
    }
  }
}

provider "linode" {
  token = var.api_key
}
