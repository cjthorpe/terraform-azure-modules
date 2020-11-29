output "azuredevops_project" {
  value = {
    project_name       = azuredevops_project.instance.project_name
    version_control    = azuredevops_project.instance.version_control 
    visibility         = azuredevops_project.instance.visibility
    work_item_template = azuredevops_project.instance.work_item_template
  }
}

