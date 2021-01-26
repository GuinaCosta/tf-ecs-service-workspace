data "terraform_remote_state" "ecs_cluster" {
  backend = "remote"
  config = {
    organization = var.tf_organization
    workspaces = {
      name = var.ecs_cluster_workspace
    }
  }
}