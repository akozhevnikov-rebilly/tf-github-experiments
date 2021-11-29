data "github_repository" "default" {
  name = "tf-github-experiments"
}

data "github_branch" "default" {
  repository = data.github_repository.default.name
  branch = "main"
}
