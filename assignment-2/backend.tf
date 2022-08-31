terraform {
  backend "s3" {
    bucket ="for-tfstate-file"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "for-lock-file"
  }
}



