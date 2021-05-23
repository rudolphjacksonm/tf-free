variable "vpc_name" {
  type        = string
  default     = "gcp-internal-network"
  description = "Your instance's network on GCP. [GCP's Official documentation on naming resources](https://cloud.google.com/compute/docs/naming-resources#resource-name-format)"
  validation {
    condition     = can(regex("[a-z]([-a-z0-9]*[a-z0-9])?", var.vpc_name))
    error_message = "Error: Your network name is invalid, adjust it to GCP's resources naming convention."
  }
}

variable "static_ip_name" {
  type        = string
  default     = "ipv4-main-ip"
  description = "Your static IP network resource name on GCP. [GCP's Official documentation on naming resources](https://cloud.google.com/compute/docs/naming-resources#resource-name-format)"
  validation {
    condition     = can(regex("[a-z]([-a-z0-9]*[a-z0-9])?", var.static_ip_name))
    error_message = "Error: Your static IP address resource name is invalid, adjust it to GCP's resources naming convention."
  }
}

variable "subnetworks" {
  type        = bool
  default     = true
  description = "An option to enable or disable the creation of subnetworks attached to the VPC automatically."
}

variable "enable_web" {
  type        = number
  default     = 1
  description = "Specificies if the static IPv4 Address should be created using a binary numeric value."
}


