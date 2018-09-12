variable "scaling_min" {
  type = "string"
}
variable "scaling_max" {
  type = "string"
}
variable "http_healthcheck_endpoint" {
  type = "string"
  default = "/"
}

variable "http_healthcheck_port" {
  type = "string"
  default = "8000"
}

variable "instance_type" {
  type = "string"
}
