# Creamos el droplet

resource "digitalocean_droplet" "sam_web" {
  image     = "ubuntu-20-04-x64"
  name      = "sam-web-1"
  region    = "nyc1"
  size      = "s-1vcpu-1gb"
  # user_data = file("./data/userdata.yaml")
  user_data = file("./script/init.sh")
  ssh_keys = [digitalocean_ssh_key.sam_ssh_key.fingerprint]
}

# Commands to run terraform recipe:
# terraform plan
# terraform apply
# ps fa # Check if cloud-init is running
# grep cloud-init /var/log/syslog # In case of error, check the logs
# tail -f /var/log/cloud-init-output.log # In case of error, check the logs