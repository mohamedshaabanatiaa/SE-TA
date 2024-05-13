provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "mongodb_backup_bucket" {
  bucket = "database-mongodb-backup"
  acl    = "public-read"

  tags = {
    Name = "database-mongodb-backup"
  }

  force_destroy = true
}
