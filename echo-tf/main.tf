variable "message" {
  type    = string
  default = "Hello World"
}

resource "null_resource" "echo" {
  triggers = {
    message = var.message
  }

  provisioner "local-exec" {
    command = "echo ${var.message}"
  }
}

output "message" {
  value = var.message
}
