# Overview

Given a local zip file path and AWS Lambda parameters, this module:

- Creates an S3 bucket.
- Uploads AWS Lambda zip file there.
- Create AWS Lambda pointing to the uploaded zip file.

# Usage
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| lambda\_description | Lambda function description | `string` | `"Test lambda"` | no |
| lambda\_handler | Lambda function handler | `string` | `"lambda.lambda_handler"` | no |
| lambda\_iam\_policy\_document | Lambda IAM policy document | `string` | `"{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Action\": \"sts:AssumeRole\",\n      \"Principal\": {\n        \"Service\": \"lambda.amazonaws.com\"\n      },\n      \"Effect\": \"Allow\",\n      \"Sid\": \"\"\n    }\n  ]\n}\n"` | no |
| lambda\_memory\_size | Lambda function memory MB | `number` | `128` | no |
| lambda\_name | Lambda function name | `string` | `"test-tf-lambda"` | no |
| lambda\_role | Lambda IAM role name | `string` | `"test-tf-lambda-role"` | no |
| lambda\_runtime | Lambda function runtime | `string` | `"python3.7"` | no |
| lambda\_s3\_bucket | S3 Bucket where lambda code is uploaded | `string` | `"test-tf-lambda-s3"` | no |
| lambda\_timeout | Lambda function timeout | `number` | `60` | no |
| lambda\_zip\_file\_path | Lambda function code zip file path | `string` | n/a | yes |
| tags | Tags to apply on S3 bucket and Lambda | `map` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| lambda\_function\_invoke\_arn | Lambda function invoke arn |
| lambda\_function\_name | Lambda function |
| lambda\_role\_arn | Lambda role arn |
| lambda\_s3\_id | Lambda S3 bucket name |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
