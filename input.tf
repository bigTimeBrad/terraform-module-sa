variable "sa_name" {
  description = "Specifies the name of the storage account."
  default     = "storageaccountbantestdev"
}

variable "sa_location" {
  description = "The location where the resource group should be created"
  default     = "West US"
}

variable "sa_rg_name" {
  description = "The location where the resource group should be created"
  default     = "this-should-change-at-runtime"
}