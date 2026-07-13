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
  # --- Unconfirmed validation candidates, derived from azurerm_iothub_fallback_route's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: iothub_name
  #   source:    [from validate.IoTHubName] !matched
  # path: source
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: endpoint_names[*]
  #   source:    [from validate.IoTHubEndpointName] name == value
}

