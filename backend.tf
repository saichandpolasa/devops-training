terraform {
  backend "s3" {
    bucket = "saichand-test-bucket"
    key = "terraform.tfstate"
    region = "eu-north-1"
}
}
