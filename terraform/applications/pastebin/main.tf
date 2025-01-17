module "pastebin-db" {
  source = "github.com/mozilla-it/terraform-modules//aws/database?ref=master"

  identifier = "${var.project}-${var.environment}"
  name       = var.project
  storage_gb = 20
  subnets    = data.terraform_remote_state.vpc.outputs.private_subnets
  type       = "mysql"
  username   = var.project
  vpc_id     = data.terraform_remote_state.vpc.outputs.vpc_id

  cost_center = var.cost_center
  environment = var.environment
  project     = var.project
}
