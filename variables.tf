variable "linode_api_key" {
  type        = string
  description = "Linode API key"
}

variable "firewall" {
  description = "Enables Cloud Firewall"
}

variable "region" {
  type        = string
  description = "Linode region"
}

variable "vpn_username" {
  type        = string
  description = "User name of the VPN user"
  default     = "vpnuser"
}
