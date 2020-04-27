output "id" {
  value = aws_secretsmanager_secret_version.secretsmanager_secret_version.id
}

output "arn" {
  value = aws_secretsmanager_secret_version.secretsmanager_secret_version.arn
}

output "version_id" {
  value = aws_secretsmanager_secret_version.secretsmanager_secret_version.version_id
}


output "secrets" {
  value     = jsondecode(aws_secretsmanager_secret_version.secretsmanager_secret_version.secret_string)
  sensitive = true
}