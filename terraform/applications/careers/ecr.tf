module "ecr" {
  source    = "github.com/mozilla-it/terraform-modules//aws/ecr?ref=master"
  repo_name = "careers"
}
