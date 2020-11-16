# Overview

Deploys an AWS API Gateway with Lambda integration with static methods.

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
| api\_name | API Gateway REST API name | `string` | `"test-tf-apigw"` | no |
| burst\_limit | API Gateway burst limit | `number` | `2` | no |
| lambda\_invoke\_arn | API Gateway integration lambda invoke arn | `string` | n/a | yes |
| lambda\_name | API Gateway integration lambda name | `string` | `"test-tf-lambda"` | no |
| rate\_limit | API Gateway rate limit | `number` | `5` | no |
| resource\_names | Resources to create | `list` | <pre>[<br>  "breakfast",<br>  "lunch",<br>  "supper"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| base\_url | API Gateway base url |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
