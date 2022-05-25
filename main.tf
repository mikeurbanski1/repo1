resource "aws_s3_bucket" "repo_1_bucket" {
  bucket = "abc"
}

module "local_module" {
  source = "./module"
}

module "local_module_2" {
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
