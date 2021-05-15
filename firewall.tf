resource "linode_firewall" "vpn_firewall" {
  count = var.firewall ? 1 : 0

  label = join("-", [linode_instance.vpn.label, "fw"])
  tags  = ["osint", "vpn"]

  # Allow remote administration
  # inbound {
  #   label    = "allow-ssh"
  #   action   = "ACCEPT"
  #   protocol = "TCP"
  #   ports    = "22"
  #   ipv4     = ["0.0.0.0/0"]
  #   ipv6     = ["ff00::/8"]
  # }

  # Allow IPSEC traffic
  inbound {
    label    = "allow-ipsec-vpn"
    action   = "ACCEPT"
    protocol = "UDP"
    ports    = "500, 4500"
    ipv4     = ["0.0.0.0/0"]
    ipv6     = ["ff00::/8"]
  }

  inbound_policy  = "DROP"
  outbound_policy = "ACCEPT"

  linodes = [linode_instance.vpn.id]
}
