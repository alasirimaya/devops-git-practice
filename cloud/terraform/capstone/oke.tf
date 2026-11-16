resource "oci_containerengine_cluster" "capstone_oke" {
  compartment_id     = var.compartment_id
  name               = "capstone-oke-cluster"
  vcn_id             = oci_core_vcn.week5_vcn.id
  kubernetes_version = var.kubernetes_version
  type               = "BASIC_CLUSTER"

  endpoint_config {
    is_public_ip_enabled = true
    subnet_id            = oci_core_subnet.week5_public_subnet.id
  }

  options {
    service_lb_subnet_ids = [
      oci_core_subnet.week5_public_subnet.id
    ]
  }
}
