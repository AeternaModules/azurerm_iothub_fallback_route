variable "iothub_fallback_routes" {
  description = <<EOT
Map of iothub_fallback_routes, attributes below
Required:
    - enabled
    - endpoint_names
    - iothub_name
    - resource_group_name
Optional:
    - condition
    - source
EOT

  type = map(object({
    enabled             = bool
    endpoint_names      = list(string)
    iothub_name         = string
    resource_group_name = string
    condition           = optional(string)
    source              = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.iothub_fallback_routes : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_fallback_routes : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_fallback_routes : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

