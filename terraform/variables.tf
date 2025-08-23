variable "resource_group_name" {
  type        = string
  default = "pytest_resources"
}
variable "acr_server" {
  type        = string
  default     = "commonacrregistry.azurecr.io"
}
variable "acr_username" {
  type        = string
  default     = "commonacradmin"
}
variable "acr_password" {
  type        = string
  default     = "commonacrpassword"
}
variable "container_log_name" {
  type        = string
  default     = "pytest-log-analytics"
}
variable "container_env_name" {
  type        = string
  default     = "pytest-container-env"
}
variable "frontend_image_tag" {
  type = string
}
variable "backend_image_tag" {
  type = string
}
variable "app_name" {
  type        = string
  default     = "pytest-app"
}
variable "backend_port" {
  type        = string
  default     = "8080"
}
variable "frontend_port" {
  type        = string
  default     = "3000"
}
variable "text_content" {
  type        = string
  default     = "default!"
}
variable "frontend_url" {
  type        = string
  default     = "http://localhost"
}
variable "backend_url" {
  type        = string
  default     = "http://localhost:8080"
}