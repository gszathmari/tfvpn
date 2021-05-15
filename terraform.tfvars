# Retrieve the availabile regions with `curl https://api.linode.com/v4/regions | jq`
region = "ap-west" # Mumbai, IN

# Cloud Firewall is only supported in:
# - Mumbai, IN
# - Toronto, ON
# - Sydney, AU
# - Fremont, CA
# - Atlanta, GA
# - London, UK
firewall = true
