resource "oci_core_vcn" "week5_vcn" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaav25xabthb7ghtnt34oklsz4tczzosmrwy7lfuwud6lmunr7pe44a"

  cidr_blocks  = ["10.10.0.0/16"]
  display_name = "week5-terraform-vcn"
  dns_label    = "week5vcn"
}

