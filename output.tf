output "vpc_id" {
  value = module.vpc.vpc_id
}

output "igw_id" {
  value = module.vpc.igw_id
}

# for debugging
output "all_az_info" {
  value = module.vpc.all_azs_info.names
}

output "selected_azs" {
  value = module.vpc.selected_azs
}

output "subnet_cidrs" {
  value = {
    az1_subnet_cidrs = module.vpc.az1_subnet_cidrs,
    az2_subnet_cidrs = module.vpc.az2_subnet_cidrs
  }
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "database_subnet_ids" {
  value = module.vpc.database_subnet_ids
}