module "vpc" {
  source = "../terraform-vpc-module"

  project        = "expense"
  environment    = "dev"
  vpc_cidr_block = "10.0.0.0/16"
  select_azs     = [1, 2]
  subnet_cidrs = [
    ["10.0.1.0/24", "10.0.11.0/24", "10.0.21.0/24"],
    ["10.0.2.0/24", "10.0.12.0/24", "10.0.22.0/24"]
  ]
}
