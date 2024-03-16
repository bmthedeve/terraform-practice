resource "local_file" "first" {
  filename = "his_name.txt"
#   content = var.the_content["city"]
  content = var.the_content[0]

}

variable "the_content" {
  type = list
#   default = {
#     "city":"chennai",
#     "vehicle": "car"
#   }
    default = ["first","second","third"]
}