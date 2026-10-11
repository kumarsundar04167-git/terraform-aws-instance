variable "project" {
    type = string
}

variable "environment" {
    type = string
}

variable "component" {
    type = string
}

variable "sg_ids" {
    type = list
}

variable "instance_type" {
    type = string
    default = "t3.micro"

    validation {
    condition = contains(["t3.micro","t3.small","t3.medium"],var.instance_type)
    error_message = " instance_type should be either t3.micro or t3.small or t3.medium"
  }
}

variable "ec2_tags" {
    type = list
    default = []
}

variable "sg_tags" {
    type = map
    default = {}
}