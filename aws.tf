resource "aws_kms_key" "my_key" {
  description = "This is my KMS key"
  key_usage = "ENCRYPT_DECRYPT"
  deletion_window_in_days = 10
  policy = var.aws_kms_policy
}

resource "aws_secretsmanager_secret" "app_api_key" {
  name = "app_api_key"
  kms_key_id = aws_kms_key.my_key.id
}

resource "aws_secretsmanager_secret_version" "app_api_key_version" {
  secret_id = aws_secretsmanager_secret.app_api_key.id
  secret_string = var.app_api_key
}
