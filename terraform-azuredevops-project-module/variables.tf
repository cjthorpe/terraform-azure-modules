variable "org_service_url" {
  description = "The Azure DevOps organisation URL."
  type        = string
}

variable "personal_access_token" {
  description = "The Azure DevOps organization personal access token."
  type        = string
}

variable "project_name" {
  description = "The project name."
  type        = string
}

variable "version_control" {
  description = "Specifies the version control system."
  type        = string
}

variable "visibility" {
  description = "Specifies the visibility of the project."
  type        = string
}

variable "work_item_template" {
  description = "Specifies the work item template."
  type        = string
}
