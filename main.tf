module "vpc" {
  source = "git::https://github.com/MMahiketh/terraform-vpc-module.git?ref=master"

  project        = "expense"
  environment    = "dev"
  vpc_cidr_block = "10.0.0.0/16"
  select_azs     = [1, 2]
  subnet_cidrs = [
    ["10.0.1.0/24", "10.0.11.0/24", "10.0.21.0/24"],
    ["10.0.2.0/24", "10.0.12.0/24", "10.0.22.0/24"]
  ]
  is_peering_required = true
}
