resource "local_file" "food" {
  content  = "My favorite food is healthy food!"
  filename = "${path.module}/food.bar"
}