# Exportamos nuestra key SSH

resource "digitalocean_ssh_key" "sam_ssh_key" {
  name       = "sam_ssh_key"
  public_key = file("~/.ssh/id_rsa.pub")
}

# Commands to run terraform recipe:
# terraform plan
# terraform apply