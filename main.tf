provider "aws" { }

variable "az_count" { }

resource "aws_s3_bucket" "remote_state" {
  bucket = "${var.bucket_remote_state}"
  acl = "private"

  versioning {
    enabled = true
  }

  tags {
    "Provisioner" = "tf"
  }
}

output "bucket_remote_state" {
  value = "${var.bucket_remote_state}"
}

output "az_count" {
  value = "${var.az_count}"
}

output "az_names" {
  value = "${var.az_names}"
}
