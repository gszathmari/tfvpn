resource "linode_instance" "vpn" {
  label           = join(".", [random_pet.hostname.id, "vpn"])
  image           = "linode/debian10"
  region          = var.region
  type            = "g6-nanode-1"
  authorized_keys = [chomp(tls_private_key.vpn.public_key_openssh)]
  tags            = ["osint", "vpn"]
  group           = "osint"
  swap_size       = 1024
  private_ip      = false
  stackscript_id  = data.linode_stackscript.hwdsl2.id
  stackscript_data = {
    VPN_USER      = var.vpn_username,
    VPN_PASSWORD  = random_password.password.result,
    VPN_IPSEC_PSK = random_password.psk.result
  }
  alerts {
    cpu = 80
  }
}

resource "tls_private_key" "vpn" {
  algorithm   = "ECDSA"
  ecdsa_curve = "P384"
}
