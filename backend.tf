terraform {
  backend "s3" {
    bucket = "saichand-testing-bucket"
    key = "terraform.tfstate"
    region = "us-east-1"
}
}
