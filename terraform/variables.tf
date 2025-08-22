variable "resource_group_name" {
  type        = string
  default = "pytest_resources"
}

variable "location" {
  type        = string
  default     = "West Europe"
}

variable "acr_name" {
  type        = string
  default = "pytestregistry"
}

variable "container_app_name" {
  type        = string
  default     = "pytest-app"
}
