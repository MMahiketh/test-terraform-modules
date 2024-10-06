module "main" {
  source = "git::https://github.com/MMahiketh/terraform-sg-module.git?ref=master"

  project = "expense"
  environment = "dev"
  instance = "mysql"
  vpc_id = "vpc-004eaa275ecef58a0"
}