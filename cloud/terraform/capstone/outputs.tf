output "vcn_id" {
  description = "OCID of the created VCN"
  value       = oci_core_vcn.week5_vcn.id
}

output "public_subnet_id" {
  description = "OCID of the public subnet"
  value       = oci_core_subnet.week5_public_subnet.id
}

output "private_subnet_id" {
  description = "OCID of the private subnet"
  value       = oci_core_subnet.week5_private_subnet.id
}

output "instance_id" {
  description = "OCID of the compute instance"
  value       = oci_core_instance.week5_compute.id
}

output "instance_public_ip" {
  description = "Public IP address of the compute instance"
  value       = oci_core_instance.week5_compute.public_ip
}
