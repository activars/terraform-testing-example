variable "tags" {
  type = "map"
  default = {
    "repo" = "none"
    "owner" = "none"
    "cost_centre" = "none"
    "project" = "none"
    "maintance_window" = "none"
    "tf_version" = "none"
    "created_at" = "none"
    "change_num" = "none"
  }
}

variable "environment_options" {
  type = "list"
  default = ["sdx", "dev", "uat", "prd"]
}

variable "environment" {}

resource "null_resource" "is_environment_valid" {
  count = "${contains(var.environment_options, var.environment) == true ? 0 : 1}"
  "Invalid environment value: MUST be sdx, dev, uat, prd" = true
}