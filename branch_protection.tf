resource "github_branch_protection" "default" {
  repository_id = github_repository.default.name
  pattern = github_branch_default.default.branch
  required_status_checks {
    strict   = true
    contexts = ["DevEnv Infrastructure/Apply infrastructure changes"]
  }
  required_linear_history = true
}
