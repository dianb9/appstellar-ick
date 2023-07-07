variable "access_key"{
    description = "Access key ID for the provider"
}

variable "secret_key" {
    description = "secret key for the provider"
}


provider "aws" {
    region = "eu-central-1"
    access_key = var.access_key
    secret_key = var.secret_key
}



resource "aws_ecr_repository" "this" {
  name                 = "ardian-ick"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

output "ecr_id" {
    value = aws_ecr_repository.this.id
}

output "ecr_arn" {
    value = aws_ecr_repository.this.arn
}