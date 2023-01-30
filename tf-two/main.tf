variable "sg_id" {}

variable "boolean" {
  type = bool
}

# variable "testing" {
#   type = list(string)
# }

variable "sg" {}

resource "null_resource" "echo" {
  triggers = {
    always = timestamp()
  }
  
  provisioner "local-exec" {
    command = "echo ${var.sg.id} ${var.boolean}"
  }
}
