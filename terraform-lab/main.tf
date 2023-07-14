data "aws_vpc" "emri" {

    tags = {
        Environment = "dev"
    }

}

output "vpc_id" {

    value = data.aws_vpc.emri.id
}