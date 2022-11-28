variable "security_group_id" {}

variable "boolean" {
  type = bool
}

resource "null_resource" "echo" {
  triggers = {
    always = timestamp()
  }
  
  provisioner "local-exec" {
    command = "echo ${var.security_group_id} ${var.boolean}"
  }
}
