# Amazon AWS module
# Pass in the subnet_id variable
module "aws" {
  source = "./aws"
  subnet_id = "${var.aws_subnet_id}"
}

# DigitalOcean module
module "digitalocean" {
  source = "./digitalocean"
}

# GitHub
module "github" {
  source = "./github"
}
