resource "github_branch_default" "default" {
  branch     = github_branch.default.branch
  repository = github_repository.default.name
}