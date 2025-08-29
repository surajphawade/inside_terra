variable "resource_group" {
type = map(any)
}

variable "virtual_network" {
  type = map(any)
}

variable "storage_account" {
    type = map(any)
}

variable "azure_subnet" {
  type = map(any)
}

variable "azure_virtual_machine" {
  type = map(any)
}