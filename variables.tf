variable "aws_region" {
  description = "The AWS region to deploy to"
  default     = "eu-west-1"
}

variable "aws_kms_policy" {
  description = "The policy for the KMS key"
}

variable "app_api_key" {
  description = "The API key for the application"
  sensitive = true
}
