terraform {
  backend "s3" {
    bucket         = "remote-backend-terraform-state"
    key            = "project-1/state"
    region         = "us-east-1"
    dynamodb_table = "terraform_state_backend"
  }
}