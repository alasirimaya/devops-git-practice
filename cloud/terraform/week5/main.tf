resource "oci_core_vcn" "week5_vcn" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaav25xabthb7ghtnt34oklsz4tczzosmrwy7lfuwud6lmunr7pe44a"

  cidr_blocks  = ["10.10.0.0/16"]
  display_name = "week5-terraform-vcn"
  dns_label    = "week5vcn"
}

resource "oci_core_internet_gateway" "week5_igw" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaav25xabthb7ghtnt34oklsz4tczzosmrwy7lfuwud6lmunr7pe44a"
  vcn_id         = oci_core_vcn.week5_vcn.id
  display_name   = "week5-internet-gateway"
  enabled        = true
}

resource "oci_core_route_table" "week5_public_rt" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaav25xabthb7ghtnt34oklsz4tczzosmrwy7lfuwud6lmunr7pe44a"
  vcn_id         = oci_core_vcn.week5_vcn.id
  display_name   = "week5-public-route-table"

  route_rules {
    destination       = "0.0.0.0/0"
    network_entity_id = oci_core_internet_gateway.week5_igw.id
  }
}

resource "oci_core_subnet" "week5_public_subnet" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaav25xabthb7ghtnt34oklsz4tczzosmrwy7lfuwud6lmunr7pe44a"
  vcn_id         = oci_core_vcn.week5_vcn.id

  cidr_block                 = "10.10.1.0/24"
  display_name               = "week5-public-subnet"
  dns_label                  = "public"
  route_table_id             = oci_core_route_table.week5_public_rt.id
  prohibit_public_ip_on_vnic = false
}

resource "oci_core_subnet" "week5_private_subnet" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaav25xabthb7ghtnt34oklsz4tczzosmrwy7lfuwud6lmunr7pe44a"
  vcn_id         = oci_core_vcn.week5_vcn.id

  cidr_block                 = "10.10.2.0/24"
  display_name               = "week5-private-subnet"
  dns_label                  = "private"
  prohibit_public_ip_on_vnic = true
}
