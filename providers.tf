provider "aws" {
  version = "~> 5.0"
  region  = "us-east-1"
  shared_credentials_files = ["/home/anm/.aws/credentials"]
  
}