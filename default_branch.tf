resource "github_branch_default" "default" {
  branch = "main"
  repository = data.github_repository.active.name
}