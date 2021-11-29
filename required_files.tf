resource "github_repository_file" "readme" {
  repository          = github_repository.default.name
  branch              = github_branch.default.branch
  content             = "## ${github_repository.default.full_name}"
  file                = "README.md"
  commit_message      = "Add missed README.md"
  overwrite_on_create = false
}