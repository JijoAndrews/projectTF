resource "aws_s3_bucket" "demofromgithub"{
    bucket="jijo-tf-demo-bucket-from-github-2025-v1"
}

resource "aws_s3_object" "helloo_file"{
 bucket       = aws_s3_bucket.demofromgithub.bucket
  key          = "hello.txt"
  content      = "Hello World!"
  content_type = "text/plain"
}