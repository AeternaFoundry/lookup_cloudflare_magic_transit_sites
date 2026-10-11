output "magic_transit_sites_lookup_account_id" {
  description = "Map of account_id values across all magic_transit_sites_lookup, keyed the same as var.magic_transit_sites_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_magic_transit_sites.magic_transit_sites_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "magic_transit_sites_lookup_connectorid" {
  description = "Map of connectorid values across all magic_transit_sites_lookup, keyed the same as var.magic_transit_sites_lookup except keys with no connectorid are omitted"
  value       = { for k, v in data.cloudflare_magic_transit_sites.magic_transit_sites_lookup : k => v.connectorid if v.connectorid != null && length(v.connectorid) > 0 }
}
output "magic_transit_sites_lookup_max_items" {
  description = "Map of max_items values across all magic_transit_sites_lookup, keyed the same as var.magic_transit_sites_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_magic_transit_sites.magic_transit_sites_lookup : k => v.max_items if v.max_items != null }
}
output "magic_transit_sites_lookup_result" {
  description = "Map of result values across all magic_transit_sites_lookup, keyed the same as var.magic_transit_sites_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_magic_transit_sites.magic_transit_sites_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}

