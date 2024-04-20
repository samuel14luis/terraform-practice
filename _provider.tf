variable "digitalocean_token" {}

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
    token = "${var.digitalocean_token}"
}

# Command to set token in windows:
# set TF_VAR_DIGITALOCEAN_TOKEN=mytoken
# echo %TF_VAR_DIGITALOCEAN_TOKEN%

# Commands to run terraform recipe:
# terraform init
# terraform plan