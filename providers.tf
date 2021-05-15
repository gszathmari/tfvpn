terraform {
  required_version = "~> 0.15.3"
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "~> 1.18.0"
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
