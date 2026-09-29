resource "github_organization_settings" "this" {
  billing_email                           = var.billing_email
  name                                    = var.organization
  blog                                    = "https://gravatar.com/${var.organization}"
  has_organization_projects               = false
  default_repository_permission           = "none"
  members_can_create_private_repositories = false
  members_can_create_private_pages        = false
}

resource "github_actions_organization_permissions" "this" {
  allowed_actions      = "all"
  enabled_repositories = "all"
}

resource "github_actions_organization_workflow_permissions" "this" {
  organization_slug                = var.organization
  default_workflow_permissions     = "write"
  can_approve_pull_request_reviews = true
}
