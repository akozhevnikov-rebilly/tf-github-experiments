resource "github_repository_file" "readme" {
  repository = data.github_branch.default.repository
  branch = data.github_branch.default.branch
  content = "## ${data.github_repository.default.full_name}"
  file = "README.md"
  commit_message = "Add missed README.md"
  overwrite_on_create = false
}