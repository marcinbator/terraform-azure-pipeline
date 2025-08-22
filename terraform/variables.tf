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

variable "backend_port" {
  type        = string
  default     = "8080"
}

variable "text_content" {
  type        = string
  default     = "Hello, World!"
}