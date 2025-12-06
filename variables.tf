variable "project" {}
variable "cidr_block" {}
variable "public_subnet" { type = list(string) }
variable "private_subnet" { type = list(string) }
variable "azs" { type = list(string) }