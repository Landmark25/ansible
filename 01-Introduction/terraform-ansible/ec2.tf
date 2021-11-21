
resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  user_data = data.template_file.user-data-ubuntu.rendered
  key_name = var.key_name

  tags = {
    Name = var.instance_name1
  }
}

resource "aws_instance" "RHEL" {
  ami           = data.aws_ami.rhel.id
  instance_type = var.instance_type
  user_data = data.template_file.user-data-RHEL.rendered
  key_name = var.key_name

  tags = {
    Name = var.instance_name3
  }
}
resource "aws_instance" "amlinux" {
  ami           = data.aws_ami.amzlinux.id
  instance_type = var.instance_type
  user_data = data.template_file.user-data-amlinux.rendered
  key_name = var.key_name

  tags = {
    Name = var.instance_name2
  }
}


resource "aws_instance" "my_ubuntu_hosts" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  user_data = data.template_file.create-user-ansible.rendered
  key_name = var.key_name
  count = 3

  tags = {
    Name = "My_Ubuntu_hosts_${count.index}"
  }
}
