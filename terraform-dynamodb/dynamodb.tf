provider "aws" {
  region = "us-east-1"
}

resource "aws_dynamodb_table" "guestbook" {
  name         = "GuestBook3"
  billing_mode = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key    = "Email"

  attribute {
    name = "Email"
    type = "S"
  }

  attribute {
    name = "Name"
    type = "S"
  }

  attribute {
    name = "Country"
    type = "S"
  }

  global_secondary_index {
    name            = "NameIndex"
    hash_key        = "Name"
    projection_type = "ALL"
    read_capacity   = 5
    write_capacity  = 5
  }

  global_secondary_index {
    name            = "CountryIndex"
    hash_key        = "Country"
    projection_type = "ALL"
    read_capacity   = 5
    write_capacity  = 5
  }
}
