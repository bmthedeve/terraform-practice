terraform {
  required_providers {
    github = {
        source = "integrations/github"
        version = "~>5.0"
    }
  }
}

provider "github" {
  token = "YOUR API TOKEN"
}

resource "github_repository" "example" {
  name = "fromTerraform"
  description = "creating this repo from terraform"

  visibility = "public"
}
