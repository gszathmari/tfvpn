variable "api_key" {
  type        = string
  description = "Linode API key"
}

variable "region" {
  type        = string
  description = "Linode region"
  default     = "ap-northeast"
}

variable "vpn_username" {
  type        = string
  description = "User name of the VPN user"
  default     = "vpnuser"
}
