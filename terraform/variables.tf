variable "resource_group_name" {
  type        = string
  default = "pytest_resources"
}
variable "container_log_name" {
  type        = string
  default     = "pytest-log-analytics"
}
variable "container_env_name" {
  type        = string
  default     = "pytest-container-env"
}
variable "acr_name" {
  type        = string
  default = "pytestregistry"
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