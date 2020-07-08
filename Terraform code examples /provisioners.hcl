#If you are certain that provisioners are the best way to solve your problem after considering the advice in the sections above, you can add a provisioner block inside the resource block of a compute instance.

#local-exec Provisioner 
resource "aws_instance" "web" {
  # ...

  provisioner "local-exec" {
    command = "echo ${aws_instance.web.private_ip} >> private_ips.txt"
  }
}

#remote-exec Provisioner
resource "aws_instance" "web" {
  # ...

  provisioner "remote-exec" {
    inline = [
      "puppet apply",
      "consul join ${aws_instance.web.private_ip}",
    ]
  }
}