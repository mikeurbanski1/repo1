resource "aws_s3_bucket" "bucket" {

}


resource "aws_security_group_rule" "sgrule" {
  
}

resource "azurerm_virtual_machine" "vm" {

}

resource "azurerm_lb_rule" "lbrule" {

}

resource "google_compute_instance" "gcpinstance" {

}

resource "google_app_engine_firewall_rule" "fwrule" {

}

resource "alicloud_vpc" "vpc" {

}

resource "alicloud_network_acl" "acl" {
  
}

resource "aws_s3_bucket" "traced" {
  bucket = "bc-sa-drift-1"
  tags = {
    yor_trace = "6264ed3d-03a6-4665-9400-17e842bd8bf8"
  }
}
