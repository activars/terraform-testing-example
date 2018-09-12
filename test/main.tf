module "project" {
  source = "../modules/project"
  environment = "uat"
}

module "compute" {
  source = "../modules/compute"
  instance_type = "t3.small"
  scaling_max = 3
  scaling_min = 1
}
