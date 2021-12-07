resource "github_repository" "default" {
  name                   = "tf-github-experiments"
  visibility             = "public"
  vulnerability_alerts   = true
  delete_branch_on_merge = true
}

resource "github_branch" "default" {
  repository = github_repository.default.name
  branch     = "main"
}
