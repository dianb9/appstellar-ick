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

locals {
    domain = "appstellar.training"
}

data "aws_route53_zone" "this" {
    name= local.domain

}

module "acm" {
  source  = "terraform-aws-modules/acm/aws"
  version = "~> 4.0"

  domain_name  = "ardian.${local.domain}"
  zone_id      = data.aws_route53_zone.this.zone_id

  subject_alternative_names = [
   
  ]

  wait_for_validation = true

  tags = {
    Name = "ardian.${local.domain}"
  }
}

output "certificate_arn" {

    value = module.acm.acm_certificate_arn
}