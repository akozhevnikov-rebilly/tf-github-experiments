resource "github_repository" "default" {
  name       = "tf-github-experiments"
  visibility = "private"
}

resource "github_branch" "default" {
  repository = github_repository.default.name
  branch     = "main"
}
