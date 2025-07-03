# backend.tf

terraform {
  backend "s3" {
    bucket         = "appzcluster"          # Name of your S3 bucket
    key            = "terraform.tfstate"    # Path where the state file will be stored in the bucket
    region         = "ap-south-1"           # AWS region for your S3 bucket
    encrypt        = true                    # Enable server-side encryption for the state file
    # dynamodb_table = "terraform-lock"        # Optional: Table name for DynamoDB state locking
  }
}
