resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_app_service_plan" "asp" {
  name                = "${var.project_name}-asp"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_linux_web_app" "webapp" {
  name                = "${var.project_name}-webapp"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_app_service_plan.asp.id


  site_config {
    application_stack {
      docker_image_name        = "${var.container_image}"
      docker_registry_url      = "https://index.docker.io"
      docker_registry_username = var.docker_hub_username
      docker_registry_password = var.docker_hub_token
    }
    always_on = true
  }

  app_settings = {
    WEBSITES_PORT = "8000"
  }

}
