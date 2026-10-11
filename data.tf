data "aws_ami" "joindevops" {
  most_recent = true
  owners      = ["973714476881"] # Canonical

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }
  
  filter {
    name   = "Source AMI ID"
    values = ["ami-0674b824b909308d3"]
  }

  filter {
    name   = "Source AMI Region"
    values = ["us-east-1"]
  }
}

output "ami_id" {
    value = data.aws_ami.joindevops.id
}