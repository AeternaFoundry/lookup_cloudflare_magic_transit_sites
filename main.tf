data "cloudflare_magic_transit_sites" "magic_transit_sites_lookup" {
  for_each = var.magic_transit_sites_lookup

  account_id  = each.value.account_id
  connectorid = each.value.connectorid
  max_items   = each.value.max_items
}

