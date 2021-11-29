data "github_repository" "active" {
  name = "tf-github-experiments"
}

resource "github_branch" "default" {
  repository = data.github_repository.active.name
  branch = "main"
}
