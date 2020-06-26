module "dev" {
  source = "./environments/dev"
  admin_username = "${var.admin_username}"
  admin_password = "${var.admin_password}"
  environment = "${var.environment[0]}"
  workspacename = "${var.workspacename}"
  location = "${var.location}"
  name = "${var.name}"
  datacenter = "${var.datacenter}"
  network_address_space = "${var.network_address_space}"
}

module "staging" {
  source = "./environments/staging"
  admin_username = "${var.admin_username}"
  admin_password = "${var.admin_password}"
  environment = "${var.environment[1]}"
  workspacename = "${var.workspacename}"
  location = "${var.location}"
  name = "${var.name}"
  datacenter = "${var.datacenter}"
  network_address_space = "${var.network_address_space}"
}

module "production" {
  source = "./environments/prod"
  admin_username = "${var.admin_username}"
  admin_password = "${var.admin_password}"
  environment = "${var.environment[2]}"
  workspacename = "${var.workspacename}"
  location = "${var.location}"
  name = "${var.name}"
  datacenter = "${var.datacenter}"
  network_address_space = "${var.network_address_space}"
}

