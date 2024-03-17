variable "aws_region" {
  description = "The AWS region to deploy to"
  default     = "eu-west-1"
}

variable "aws_kms_policy" {
  description = "The policy for the KMS key"
  default     = jsonecode(
    {
      Version: "2012-10-17",
      Id: "key-consolepolicy-3",
      Statement: [
        {
          Sid: "Enable IAM User Permissions",
          Effect: "Allow",
          Principal: {
            "AWS": "arn:aws:iam::123456789012:root"
          },
          Action: "kms:*",
          Resource: "*"
        }
      ]
    }
  
  )
}

variable "app_api_key" {
  description = "The API key for the application"
}
