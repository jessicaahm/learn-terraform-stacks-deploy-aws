# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "vpc_id" {
  type        = string
  description = "VPC ID"
  value       = component.vpc.vpc_id
}
