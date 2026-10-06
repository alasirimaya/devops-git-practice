resource "oci_core_instance" "week5_compute" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  display_name        = "week6-terraform-vm"
  shape               = var.instance_shape

  shape_config {
    ocpus         = var.instance_ocpus
    memory_in_gbs = var.instance_memory_gbs
  }

  create_vnic_details {
    subnet_id        = oci_core_subnet.week5_public_subnet.id
    assign_public_ip = true
  }

  source_details {
    source_type = "image"
    source_id   = var.image_id
  }
}
