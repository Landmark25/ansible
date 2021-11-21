output "Ubuntu-Hosts-PrivateIP" {
  description = "Ubuntu-Hosts-PrivateIp"
  value = aws_instance.my_ubuntu_hosts.*.private_ip
}

output "Ubuntu-Hosts-PublicIP" {
  description = "Ubuntu-Hosts-PublicIP"
  value = aws_instance.my_ubuntu_hosts.*.public_ip
}

output "My_Ubuntu-PublicIP" {
  description = "value"
  value = aws_instance.ubuntu.public_ip
}

output "My_AmLinux-PublicIP" {
  description = "value"
  value = aws_instance.amlinux.public_ip
}
