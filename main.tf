provider "aws" {
  
}

resource "local_file" "demo"{
 filename = "example.txt"
 content = "first line"
}
