resource "azurerm_app_service_custom_hostname_binding" "root_domain" {
  hostname             = var.root_domain
  resource_group_name  = azurerm_linux_web_app.webapp.resource_group_name
  app_service_name     = azurerm_linux_web_app.webapp.name
}
resource "azurerm_app_service_custom_hostname_binding" "www_domain" {
  hostname             = var.www_domain
  resource_group_name  = azurerm_linux_web_app.webapp.resource_group_name
  app_service_name     = azurerm_linux_web_app.webapp.name
}

resource "azurerm_app_service_managed_certificate" "cert_root" {
  custom_hostname_binding_id = azurerm_app_service_custom_hostname_binding.root_domain.id

  timeouts {
    create = "10m"
    delete = "10m"
  }
}

resource "azurerm_app_service_managed_certificate" "cert_www" {
  custom_hostname_binding_id = azurerm_app_service_custom_hostname_binding.www_domain.id

  timeouts {
    create = "10m"
    delete = "10m"
  }
}

resource "azurerm_app_service_certificate_binding" "binding_root" {
  hostname_binding_id = azurerm_app_service_custom_hostname_binding.root_domain.id
  certificate_id      = azurerm_app_service_managed_certificate.cert_root.id
  ssl_state           = "SniEnabled"
}

resource "azurerm_app_service_certificate_binding" "binding_www" {
  hostname_binding_id = azurerm_app_service_custom_hostname_binding.www_domain.id
  certificate_id      = azurerm_app_service_managed_certificate.cert_www.id
  ssl_state           = "SniEnabled"
}
