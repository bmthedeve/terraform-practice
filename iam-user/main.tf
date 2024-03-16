provider "aws" {
  
}

resource "aws_iam_user" "userFromTerraform" {
  name = "user_from_terraform"
}