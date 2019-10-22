# output "resource_group" {
#   value = "${azurerm_resource_group.routetablerg.name}"
# }

output "route_table_id" {
  value = "${azurerm_route_table.rtable.id}"
}