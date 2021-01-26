module "ecs_cluster" {
  source = "./modules"

  project_env = var.project_env
  ecs_cluster_name = var.cluster_name
  cluster_tags = var.cluster_tags
}