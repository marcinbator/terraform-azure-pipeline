variable "resource_group_name" {
  type        = string
}

variable "location" {
  type        = string
  default     = "West Europe"
}

variable "acr_name" {
  type        = string
}

variable "container_app_name" {
  type        = string
  default     = "example-container-app"
}
