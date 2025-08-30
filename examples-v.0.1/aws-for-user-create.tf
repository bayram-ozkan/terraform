resource "aws_iam_user" "createuser1" {
  name = "Terraform-user"

  tags = {
    tag-key = "WithTerraformUser"
  }
}

