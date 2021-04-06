locals {
  mandatory_tags = map(
    "ACCESS", "Private",
    "COST_CENTRE", "",
    "ENVIRONMENT", var.environment,
    "PROJECT-SERVICE", var.project_service,
    "TERRAFORM-MANAGED", "True"
  )
}
