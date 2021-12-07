resource "github_repository" "default" {
  name       = "tf-github-experiments"
  visibility = "public"
  vulnerability_alerts = true
}

resource "github_branch" "default" {
  repository = github_repository.default.name
  branch     = "main"
}
