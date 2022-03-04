provider "aws" {
  region = "us-west-2"
}

variable "mgn_agent_iam_policy_arn" {
  type        = string
  description = "An AWS managed policy for MGN agent"
  default     = "arn:aws:iam::aws:policy/AWSApplicationMigrationAgentPolicy"
}

resource "aws_iam_user" "svc-mgn" {
  name = "svc-mgn"
  path = "/"
}

resource "aws_iam_user_policy_attachment" "attach" {
  user       = aws_iam_user.svc-mgn.name
  policy_arn = var.mgn_agent_iam_policy_arn
}
