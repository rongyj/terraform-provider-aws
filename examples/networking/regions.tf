module "us-east-1" {
  source          = "./region"
  region          = "us-east-1"
  profile         = "${var.profile}"
  base_cidr_block = "${var.base_cidr_block}"
}

module "us-west-2" {
  source          = "./region"
  region          = "us-west-2"
  profile         = "${var.profile}"
  base_cidr_block = "${var.base_cidr_block}"
}
