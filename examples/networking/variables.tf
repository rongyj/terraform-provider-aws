variable "base_cidr_block" {
  default = "10.0.0.0/22"
}

variable "profile" {
  description="The profile configured in the ~/.aws/config"
  default = "default"
}
