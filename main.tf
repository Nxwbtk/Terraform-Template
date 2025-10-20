# This resource uses the AWS Cloud Control (awscc) provider to provision
# an AWS Control Tower Landing Zone. This is the modern, recommended approach.
#
# The resource will orchestrate the creation of the necessary OUs, core accounts
# (Log Archive, Audit), and guardrails based on the provided manifest file.

resource "awscc_controltower_landing_zone" "main" {
  # The version of the landing zone to deploy.
  # It's recommended to check the AWS documentation for the latest version.
  version = "3.3"

  # The name of the S3 bucket where the manifest file is stored.
  # The awscc provider will automatically create a bucket and upload the manifest.
  # We will reference the local manifest.yaml file.
  manifest = jsonencode(yamldecode(file("${path.module}/manifest.yaml")))
}
# Output the ARN of the landing zone after it's created.
output "landing_zone_arn" {
  description = "The ARN of the deployed Control Tower Landing Zone."
  value       = awscc_controltower_landing_zone.main.arn
}

# Output the status of the landing zone deployment.
output "landing_zone_status" {
  description = "The deployment status of the landing zone."
  value       = awscc_controltower_landing_zone.main.status
}

