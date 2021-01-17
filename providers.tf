terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "~> 1.12.4"
    }
  }
}

provider "linode" {
  token = var.api_key
}
