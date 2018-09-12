output "compute_instance_type" {
  value = "${module.compute.instance_type}"
}

output "compute_scaling_max" {
  value = "${module.compute.scaling_min}"
}

output "compute_scaling_min" {
  value = "${module.compute.scaling_max}"
}

output "project_tags" {
  value = "${module.project.tags}"
}