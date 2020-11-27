resource "azuredevops_project" "instance" {
  project_name       = var.project_name
  version_control    = var.version_control
  visibility         = var.visibility
  work_item_template = var.work_item_template
}

