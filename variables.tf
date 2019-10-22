variable "location" {
  type = "string"
}

variable "base_resource_group_name" {
  type = "string"
}

variable "route_prefixes" {
  type = "list"
}

variable "route_nexthop_types" {
  type = "list"
}

variable "route_nexthop_in_ip" {
  type = "list"
}

variable "route_names" {
  type = "list"
}
variable "tags" {
  type = "map"
}
