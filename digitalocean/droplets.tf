resource "digitalocean_droplet" "terraform-1" {
  image = "ubuntu-14-04-x64"
  name  = "web-1"
  region = "nyc3"
  size = "512mb"
}
