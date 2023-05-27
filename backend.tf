terraform {
  # add terraform backend location
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "tfbucket-remotestate"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-2"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}
