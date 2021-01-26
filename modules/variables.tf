variable "app_service_name" {
  type = string
  default = "default_service"
  description = "ecs service name"
}

variable "tf_organization" {
  type = string
  description = "(required) the TF Cloud Organization"
}

variable "ecs_cluster_workspace" {
  type = string
  description = "(required) the environment ecs cluster workspace name"
}

variable "cluster_tags" {
  type = map(string)
  description = "ecs cluster tags"
}