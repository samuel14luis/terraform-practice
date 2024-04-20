# Create a new domain

resource "digitalocean_domain" "humtherland_domain" {
  name = "humtherland.com"
}

# Add an A record to the domain
resource "digitalocean_record" "www_htl" {
  domain    = digitalocean_domain.humtherland_domain.name
  type      = "A"
  name      = "test"
  ttl       = "3000" # greater than 30 seconds
  value     = digitalocean_droplet.sam_web.ipv4_address
}