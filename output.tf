output "ipv4" {
  description = "The public IP of the VPN host."
  value       = linode_instance.vpn.ip_address
}

output "username" {
  description = "The user name of the VPN user."
  value       = var.vpn_username
}

output "password" {
  description = "The password of the VPN user."
  value       = random_password.password.result
  # Remove comment to not print sensitive data out after `terraform apply`
  #sensitive   = true
}

output "psk" {
  description = "The PSK of the VPN host."
  value       = random_password.psk.result
  # Remove comment to not print sensitive data out after `terraform apply`
  #sensitive   = true
}

output "ssh_private_key" {
  description = "Throwaway SSH private key."
  value       = tls_private_key.vpn.private_key_pem
  sensitive   = true
}
