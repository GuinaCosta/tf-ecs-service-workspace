resource "aws_iam_role" "task_role" {
  assume_role_policy = ""
}

resource "aws_iam_role_policy" "task_role_policy" {
  policy = ""
  role = aws_iam_role.task_role.id
}