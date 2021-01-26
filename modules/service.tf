resource "aws_ecs_service" "dev_app_service" {
  name = "${var.app_service_name}-dev"
  cluster = data.terraform_remote_state.ecs_cluster.outputs.id

  task_definition = aws_ecs_task_definition.app_task_definition.arn
  desired_count   = 3
  iam_role        = aws_iam_role.task_role
  depends_on      = [aws_iam_role_policy.task_role_policy]

  ordered_placement_strategy {
    type  = "binpack"
    field = "cpu"
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.lb_target_group.arn
    container_name   = "mongo"
    container_port   = 8080
  }

  placement_constraints {
    type       = "memberOf"
    expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"
  }
}