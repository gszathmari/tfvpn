# tfvpn

Deploy your private VPN service on Linode. Full automation and rapid deployment.

## Description

This project uses [Terraform](https://terraform.io/) to fully automate the deployment of the [hwdsl2/setup-ipsec-vpn](https://github.com/hwdsl2/setup-ipsec-vpn) VPN project on Linode. Run your self-hosted IPSec VPN service with one click.

## Prerequisites

You need the following to deploy your own VPN service with this automation project:

- A Linode account;
- A [Linode API key](https://www.linode.com/docs/guides/getting-started-with-the-linode-api/);
- [Terraform installed](https://www.terraform.io/downloads.html) on your PC/Mac;
- Basic knowledge of `git`; and
- Basic knowledge of Terraform.

## Installation

To deploy your VPN service, simply run the following commands:

1. Clone the repository:

   ```sh
   git clone https://github.com/gszathmari/tfvpn.git
   ```

1. Change your working directory:

   ```sh
   cd tfvpn/
   ```

1. Initialise Terraform before the first use:

   ```sh
   terraform init
   ```

1. Then run `terraform apply` to launch the hosting infrastructure:

   ```sh
   terraform apply
   ```

1. Enter your [Linode API key](https://cloud.linode.com/profile/tokens) when prompted.

1. Answer `yes` to confirm the deployment. If everything ran successfully, the Linode dashboard should display the virtual machine running our new VPN service.

1. Once Terraform finishes the deployment of tfvpn, wait a minute or two and your VPN service is ready to accept new connections.

1. The VPN connection details (IP address, username and password) are displayed on the terminal screen.

## Client configuration

To configure Windows, Linux, macOS, iOS and Android clients, refer to the [hwdsl2 client configuration guide](https://github.com/hwdsl2/setup-ipsec-vpn/blob/master/docs/clients.md). Use the connection parameters shown on the terminal screen from the previous step.

## Destroying the VPN

If your tfvpn VPN service is no longer needed, it is easy to delete everything with Terraform again:

1. Change your working directory:

   ```sh
   cd tfvpn/
   ```

1. Run Terraform with the `destroy` parameter this time.

   ```sh
   terraform destroy
   ```

1. Enter the Linode API key and answer 'yes' to confirm the deletion of your hosting infrastructure.

Once Terraform manages to clean up the virtual machine, Linode should stop billing for the service.

## Further reading

- [Deploying tfvpn for OSINT investigations](https://osint.fans/tfvpn-for-osint-investigations)

## Acknowledgments

- **hwdsl2** for the [VPN project](https://github.com/hwdsl2/setup-ipsec-vpn) and [Linode StackScript](https://cloud.linode.com/stackscripts/37239)
