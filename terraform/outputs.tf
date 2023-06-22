resource "local_file" "kubeconfig" {
  depends_on   = [azurerm_kubernetes_cluster.example]
  filename     = "kubeconfig"
  content      = azurerm_kubernetes_cluster.example.kube_config_raw
}

# Output the login server and admin username
output "login_server" {
  value = azurerm_container_registry.example.login_server
}

output "admin_username" {
  value = azurerm_container_registry.example.admin_username
}