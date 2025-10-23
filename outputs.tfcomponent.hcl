# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "vpc_ids" {
  type        = map(string)
  description = "VPC IDs by region"
  value       = { for k, v in component.vpc : k => v.vpc_id }
}

output "private_subnet_ids" {
  type        = map(list(string))
  description = "Private subnet IDs by region"
  value       = { for k, v in component.vpc : k => v.private_subnet_ids }
}

output "public_subnet_ids" {
  type        = map(list(string))
  description = "Public subnet IDs by region"
  value       = { for k, v in component.vpc : k => v.public_subnet_ids }
}
