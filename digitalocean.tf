resource "digitalocean_droplet" "terraform-1" {
  image = "ubuntu-14-04-x64"
  name  = "web-1"
  region = "nyc3"
  size = "512mb"
}

resource "digitalocean_domain" "new-domain-1" {
  name = "www.new-domain-1.com"
  ip_address = "1.2.3.4"
}
