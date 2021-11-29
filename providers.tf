terraform {
    required_version = ">= 0.12"

    required_providers {
        github = {
            source = "integrations/github"
            version = "~> 4.0"
        }
    }
}

provider "github" {
  owner = "Alexander Kozhevnikov"
  token = var.github_token
}