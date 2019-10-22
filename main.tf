# resource "azurerm_resource_group" "routetablerg" {
#   name     = "${var.base_resource_group_name}-routes"
#   location = "${var.location}"

#   tags = "${var.tags}"
# }

resource "azurerm_route_table" "rtable" {
  name                = "${var.base_resource_group_name}-table"
  location            = "${var.location}"
  resource_group_name = "${var.base_resource_group_name}"
  # resource_group_name = "${azurerm_resource_group.routetablerg.name}"
  # disable_bgp_route_propagation = "${var.disable_bgp_route_propagation}"

  tags = "${var.tags}"
}

resource "azurerm_route" "route" {
  name                = "${var.route_names[count.index]}"
  resource_group_name = "${var.base_resource_group_name}"
  # resource_group_name = "${azurerm_resource_group.routetablerg.name}"
  route_table_name = "${azurerm_route_table.rtable.name}"
  address_prefix   = "${var.route_prefixes[count.index]}"
  next_hop_type    = "${var.route_nexthop_types[count.index]}"
  count            = "${length(var.route_names)}"
}
