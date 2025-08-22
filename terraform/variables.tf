variable "resource_group_name" {
  type        = string
}

variable "location" {
  type        = string
  default     = "West Europe"
}

variable "vm_size" {
  type        = string
  default     = "Standard_D2s_v5"
}

variable "admin_username" {
  type        = string
}

variable "admin_password" {
  type        = string
  sensitive   = true
}

variable "vnet_address_space" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefixes" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "http_port" {
  type        = number
  default     = 80
}

variable "ssh_port" {
  type        = number
  default     = 22
}
