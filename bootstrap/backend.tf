terraform {
  backend "s3" {
    bucket         = "terraform-state-kajal-rani18-001"
    key            = "backend/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}