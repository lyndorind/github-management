resource "github_team" "devops" {
  name                 = "DevOps"
  privacy              = "closed"
  notification_setting = "notifications_enabled"
}
