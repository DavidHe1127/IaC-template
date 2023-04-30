data "aws_ami" "your_ami" {
  most_recent = true

  filter {
    name   = "tag:project"
    values = ["your_project_name"]
  }
}
