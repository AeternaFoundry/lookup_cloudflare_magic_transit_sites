variable "magic_transit_sites_lookup" {
  description = <<EOT
Map of magic_transit_sites_lookup, attributes below
Optional:
    - account_id
    - connectorid
    - max_items
EOT

  type = map(object({
    account_id  = optional(string)
    connectorid = optional(string)
    max_items   = optional(number)
  }))
}

