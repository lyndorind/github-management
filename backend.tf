terraform {
  cloud {
    organization = "lyndorind"
    workspaces {
      name = "github-organization"
    }
  }
}
