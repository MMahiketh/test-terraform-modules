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