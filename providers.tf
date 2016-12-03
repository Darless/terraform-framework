provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}

provider "digitalocean" {
  token = "${var.do_token}"
}

provider "github" {
  token = "${var.github_token}"
  organization = "${var.github_organization}"
}
