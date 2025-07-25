resource "aws_s3_bucketd" "example" {
  bucket = var.bucket_name
  tags = {
    Environment = var.environment
  }
}


# ERROR: Invalid resource name (typo in resource type)
resource "aws_s3_bukcet" "bad" {
  bucket = "test-bucket"
}

# WARNING: Hardcoded AWS region
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0" # hardcoded AMI
  instance_type = "t2.micro"
  tags = {
    Name = "ExampleInstance"
  }
}