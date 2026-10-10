output "cloudwatch_log_groups_id" {
  description = "Map of id values across all cloudwatch_log_groups, keyed the same as var.cloudwatch_log_groups"
  value       = { for k, v in aws_cloudwatch_log_group.cloudwatch_log_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudwatch_log_groups_arn" {
  description = "Map of arn values across all cloudwatch_log_groups, keyed the same as var.cloudwatch_log_groups"
  value       = { for k, v in aws_cloudwatch_log_group.cloudwatch_log_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudwatch_log_groups_deletion_protection_enabled" {
  description = "Map of deletion_protection_enabled values across all cloudwatch_log_groups, keyed the same as var.cloudwatch_log_groups"
  value       = { for k, v in aws_cloudwatch_log_group.cloudwatch_log_groups : k => v.deletion_protection_enabled if v.deletion_protection_enabled != null }
}
output "cloudwatch_log_groups_kms_key_id" {
  description = "Map of kms_key_id values across all cloudwatch_log_groups, keyed the same as var.cloudwatch_log_groups"
  value       = { for k, v in aws_cloudwatch_log_group.cloudwatch_log_groups : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "cloudwatch_log_groups_log_group_class" {
  description = "Map of log_group_class values across all cloudwatch_log_groups, keyed the same as var.cloudwatch_log_groups"
  value       = { for k, v in aws_cloudwatch_log_group.cloudwatch_log_groups : k => v.log_group_class if v.log_group_class != null && length(v.log_group_class) > 0 }
}
output "cloudwatch_log_groups_name" {
  description = "Map of name values across all cloudwatch_log_groups, keyed the same as var.cloudwatch_log_groups"
  value       = { for k, v in aws_cloudwatch_log_group.cloudwatch_log_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudwatch_log_groups_name_prefix" {
  description = "Map of name_prefix values across all cloudwatch_log_groups, keyed the same as var.cloudwatch_log_groups"
  value       = { for k, v in aws_cloudwatch_log_group.cloudwatch_log_groups : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "cloudwatch_log_groups_region" {
  description = "Map of region values across all cloudwatch_log_groups, keyed the same as var.cloudwatch_log_groups"
  value       = { for k, v in aws_cloudwatch_log_group.cloudwatch_log_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudwatch_log_groups_retention_in_days" {
  description = "Map of retention_in_days values across all cloudwatch_log_groups, keyed the same as var.cloudwatch_log_groups"
  value       = { for k, v in aws_cloudwatch_log_group.cloudwatch_log_groups : k => v.retention_in_days if v.retention_in_days != null }
}
output "cloudwatch_log_groups_skip_destroy" {
  description = "Map of skip_destroy values across all cloudwatch_log_groups, keyed the same as var.cloudwatch_log_groups"
  value       = { for k, v in aws_cloudwatch_log_group.cloudwatch_log_groups : k => v.skip_destroy if v.skip_destroy != null }
}
output "cloudwatch_log_groups_tags" {
  description = "Map of tags values across all cloudwatch_log_groups, keyed the same as var.cloudwatch_log_groups"
  value       = { for k, v in aws_cloudwatch_log_group.cloudwatch_log_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cloudwatch_log_groups_tags_all" {
  description = "Map of tags_all values across all cloudwatch_log_groups, keyed the same as var.cloudwatch_log_groups"
  value       = { for k, v in aws_cloudwatch_log_group.cloudwatch_log_groups : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

