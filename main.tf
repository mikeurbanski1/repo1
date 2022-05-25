resource "aws_s3_bucket" "b" {
  bucket = "abc"
}

module "local_module" {
  source = "./module"
}

module "public_reg_module" {
  source   = "terraform-aws-modules/dynamodb-table/aws"
  name     = "my-table"
  hash_key = "id"

  attributes = [
    {
      name = "id"
      type = "N"
    }
  ]

  tags = {
    Terraform   = "true"
    Environment = "staging"
  }

  server_side_encryption_enabled = false
}