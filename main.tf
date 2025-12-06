module "vpc" {
  source = "/vpc"
  project=var.project
  cidr_block=var.cidr_block
  public_subnet=var.private_subnet
  private_subnet=vat.private_subnet
  azs=var.azs
}