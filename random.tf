resource "random_pet" "hostname" {
  length = 1
}

resource "random_password" "password" {
  length           = 16
  special          = true
  min_numeric      = 2
  min_lower        = 2
  min_upper        = 2
  min_special      = 1
  override_special = "_%@"
}

resource "random_password" "psk" {
  length  = 128
  upper   = false
  special = false
}