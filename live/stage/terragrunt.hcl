terragrunt_version_constraint = ">= v0.36.0"

remote_state {
  backend = "s3"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }

  config = {
    bucket         = "terraform-up-and-running-state"
    key            = "stage/${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "terraform-up-and-running-locks"
  }
}
