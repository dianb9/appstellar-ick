data "aws_vpc" "emri" {

    tags = {
        Environment = "dev"
    }

}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-ardian-ick"

  tags = {
    Name        = "Ardian ICK"
    Environment = "Dev"
  }
}

output "vpc_id" {

    value = data.aws_vpc.emri.id
}