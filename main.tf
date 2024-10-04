module "vpc" {
  source = "../terraform-vpc-module"

  project        = "expense"
  environment    = "dev"
  vpc_cidr_block = "10.0.0.0/16"
  select_azs     = [1, 2]
}
