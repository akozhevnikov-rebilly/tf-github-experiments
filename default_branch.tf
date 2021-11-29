resource "github_branch_default" "default" {
  branch = data.github_branch.default.branch
  repository = data.github_branch.default.repository
}