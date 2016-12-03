# Amazon EC2 Variables
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {
  default = "us-west-2"
}
variable "aws_subnet_id" {}

# Digital Ocean
variable "do_token" {}

# GitHub
variable "github_token" {}
variable "github_organization" {}
