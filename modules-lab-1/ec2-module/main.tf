#For your module code!!!
resource "aws_instance" "example" {
    ami = data.aws_ami.windows.id
    instance_type = "t2.micro"
}

#Put Data for ami filter below


data "aws_ami" "windows" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["801119661308"] # Canonical
}