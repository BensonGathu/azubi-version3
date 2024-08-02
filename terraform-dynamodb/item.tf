resource "aws_dynamodb_table_item" "guestbook_item1" {
  table_name = aws_dynamodb_table.guestbook.name
  hash_key   = "Email"
  item = <<ITEM
{
  "Email": {"S": "bensongathu23@gmail.com"},
  "Name": {"S": "Benson Gathu"},
  "Country": {"S": "Kenya"}
}
ITEM
}

resource "aws_dynamodb_table_item" "guestbook_item2" {
  table_name = aws_dynamodb_table.guestbook.name
  hash_key   = "Email"
  item = <<ITEM
{
  "Email": {"S": "[20:41] noacheaw18@gmail.com
 "},
  "Name": {"S": "Nicholina Owusu Acheaw"},
  "Country": {"S": "Ghana"}
}
ITEM
}

resource "aws_dynamodb_table_item" "guestbook_item3" {
  table_name = aws_dynamodb_table.guestbook.name
  hash_key   = "Email"
  item = <<ITEM
{
  "Email": {"S": "issarae78@gmail.com"},
  "Name": {"S": "Peace Issa"},
  "Country": {"S": "Kenya"}
}
ITEM
}
