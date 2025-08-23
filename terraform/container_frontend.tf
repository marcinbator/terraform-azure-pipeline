resource "azurerm_container_app" "frontend" {
  name                         = "${var.app_name}frontend"
  container_app_environment_id = azurerm_container_app_environment.container_env.id
  resource_group_name          = azurerm_resource_group.rg.name
  revision_mode                = "Single"

  registry {
    server               = var.acr_server
    username             = var.acr_username
    password_secret_name = "registry-password"
  }

  secret {
    name  = "registry-password"
    value = var.acr_password
  }

  template {
    container {
      name   = "pytest-frontend"
      image  = var.frontend_image_tag
      cpu    = 0.25
      memory = "0.5Gi"

      env {
        name  = "PORT"
        value = var.frontend_port
      }
      env {
        name  = "BACKEND_URL"
        value = var.backend_url
      }
    }

    min_replicas = 1
    max_replicas = 3
  }

  ingress {
    external_enabled           = true
    target_port                = var.frontend_port
    transport                  = "http"

    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
  }
}
