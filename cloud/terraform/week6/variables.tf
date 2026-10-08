variable "compartment_id" {
  description = "OCI compartment OCID"
  type        = string
}

variable "availability_domain" {
  description = "Availability domain for the compute instance"
  type        = string
  default     = "hwQp:ME-RIYADH-1-AD-1"
}

variable "vcn_cidr" {
  description = "CIDR block for the VCN"
  type        = string
  default     = "10.10.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.10.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.10.2.0/24"
}

variable "instance_shape" {
  description = "OCI compute instance shape"
  type        = string
  default     = "VM.Standard.A1.Flex"
}

variable "instance_ocpus" {
  description = "Number of OCPUs"
  type        = number
  default     = 1
}

variable "instance_memory_gbs" {
  description = "Memory allocated to the instance in GB"
  type        = number
  default     = 2
}

variable "image_id" {
  description = "OCI image OCID for the compute instance"
  type        = string
  default     = "ocid1.image.oc1.me-riyadh-1.aaaaaaaag3q72icv57mhdtro3vyr7xootb4njk5mknanm6z7cifeqfvxplhq"
}
