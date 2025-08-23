resource "azurerm_container_app" "backend" {
  name                         = "${var.app_name}backend"
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
      name   = "pytest-backend"
      image  = var.backend_image_tag
      cpu    = 0.25
      memory = "0.5Gi"

      env {
        name  = "PORT"
        value = var.backend_port
      }
      env {
        name  = "TEXT_CONTENT"
        value = var.text_content
      }
      env {
        name  = "FRONTEND_URL"
        value = var.frontend_url
      }
    }

    min_replicas = 1
    max_replicas = 3
  }

  ingress {
    external_enabled           = true
    target_port                = var.backend_port
    transport                  = "http"

    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
  }
}
