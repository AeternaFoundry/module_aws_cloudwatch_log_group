variable "cloudwatch_log_groups" {
  description = <<EOT
Map of cloudwatch_log_groups, attributes below
Optional:
    - deletion_protection_enabled
    - kms_key_id
    - log_group_class
    - name
    - name_prefix
    - region
    - retention_in_days
    - skip_destroy
    - tags
    - tags_all
EOT

  type = map(object({
    deletion_protection_enabled = optional(bool)
    kms_key_id                  = optional(string)
    log_group_class             = optional(string)
    name                        = optional(string)
    name_prefix                 = optional(string)
    region                      = optional(string)
    retention_in_days           = optional(number)
    skip_destroy                = optional(bool)
    tags                        = optional(map(string))
    tags_all                    = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudwatch_log_groups : (
        v.retention_in_days == null || (contains([0, 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653], v.retention_in_days))
      )
    ])
    error_message = "must be one of: 0, 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

