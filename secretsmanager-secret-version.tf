resource "aws_secretsmanager_secret_version" "secretsmanager_secret_version" {
  secret_id      = var.secret_id
  secret_string  = var.secret_string
  secret_binary  = var.secret_binary
  version_stages = var.version_stages
}

