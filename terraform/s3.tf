resource "aws_s3_bucket" "terraform_state" {
  bucket        = "hellholt.terraform"
  force_destroy = false // Don't zap this! It's our state storage.
}

import {
  to = aws_s3_bucket.terraform_state
  id = "hellholt.terraform"
}
