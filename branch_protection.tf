resource "github_branch_protection" "default" {
  repository_id = github_repository.default.name
  pattern = github_branch.default.branch
  required_status_checks {
    strict   = true
    contexts = ["terraform/apply"]
  }
}