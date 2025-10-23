# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "vpc_ids" {
  type        = map(string)
  description = "VPC IDs by region"
  value       = { for k, v in component.vpc : k => v.vpc_id }
}
