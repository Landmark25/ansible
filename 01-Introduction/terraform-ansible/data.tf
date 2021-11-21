

data "template_file" "user-data-ubuntu" {
  template = file("./ansible-install-ubuntu.sh")
  
}

data "template_file" "user-data-amlinux" {
  template = file("./ansible-install-rhel.sh")
}

data "template_file" "user-data-RHEL" {
  template = file("./ansible-install-rhel.sh")
}




data "template_file" "create-user-ansible" {
  template = file("./create_ansible_user.sh")
}
