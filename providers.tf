terraform {
  required_version = "~> 1.0.0"
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "~> 1.20.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 3.0.0"
    }
  }
}

provider "linode" {
  token = var.linode_api_key
}
