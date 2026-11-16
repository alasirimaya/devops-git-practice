resource "oci_core_vcn" "week5_vcn" {
  compartment_id = var.compartment_id

  cidr_blocks  = [var.vcn_cidr]
  display_name = "week6-terraform-vcn"
  dns_label    = "week6vcn"
}

resource "oci_core_internet_gateway" "week5_igw" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.week5_vcn.id
  display_name   = "week6-internet-gateway"
  enabled        = true
}

resource "oci_core_route_table" "week5_public_rt" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.week5_vcn.id
  display_name   = "week6-public-route-table"

  route_rules {
    destination       = "0.0.0.0/0"
    network_entity_id = oci_core_internet_gateway.week5_igw.id
  }
}

resource "oci_core_subnet" "week5_public_subnet" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.week5_vcn.id

  cidr_block                 = var.public_subnet_cidr
  display_name               = "week6-public-subnet"
  dns_label                  = "public"
  route_table_id             = oci_core_route_table.week5_public_rt.id
  prohibit_public_ip_on_vnic = false
}

resource "oci_core_subnet" "week5_private_subnet" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.week5_vcn.id

  cidr_block                 = var.private_subnet_cidr
  display_name               = "week6-private-subnet"
  dns_label                  = "private"
  prohibit_public_ip_on_vnic = true
}

