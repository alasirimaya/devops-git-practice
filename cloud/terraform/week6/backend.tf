terraform {
  backend "oci" {
    bucket              = "maya-terraform-state"
    namespace           = "axl5tftidrm3"
    key                 = "week6/terraform.tfstate"
    region              = "me-riyadh-1"
    config_file_profile = "DEFAULT"
  }
}
