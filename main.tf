# 変数
variable "aws_access_key_id" {
  type = string
}

variable "aws_secret_access_key" {
  type = string
}

# AWSプロバイダー
provider "aws" {
  region     = "ap-northeast-1"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}

# S3バケットを作成
resource "aws_s3_bucket" "iac_git_cicd" {
  bucket = "iac-git-cicd-20241201"
  tags = {
    Name = "iac-git-cicd-20241201-s3"
  }
}