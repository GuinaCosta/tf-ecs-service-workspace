variable "aws_region" {
  default = "sa-east-1"
  description = "aws region for the resources"
  type = string
}

variable "dev_cluster_name" {
  type = string
  description = "(required) dev ecs cluster name"
}

variable "qa_cluster_name" {
  type = string
  description = "(required) qa ecs cluster name"
}

variable "prod_cluster_name" {
  type = string
  description = "(required) prod ecs cluster name"
}

variable "cluster_tags" {
  type = map(string)
  description = "(required) ecs cluster tags"
}