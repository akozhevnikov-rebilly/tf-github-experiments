resource "github_branch_protection" "any" {
  repository_id = github_repository.default.name
  pattern = "*"
  required_status_checks {
    strict   = true
    contexts = ["DevEnv Infrastructure/Apply infrastructure changes"]
  }
  required_linear_history = true
}
