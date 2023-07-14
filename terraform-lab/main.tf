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


module "s3_object" {

    source = "./modules/s3"
    
    bucket_name = aws_s3_bucket.example.bucket
    file_key = "my-first-bucket-file"
    file_source = "./thisismyfile.txt"
}


output "vpc_id" {

    value = data.aws_vpc.emri.id
}