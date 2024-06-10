variable "project" {
    type = string
    default = "expense"
  
}

variable "environment" {
    default = "dev"
  
}

variable "common_tags" {
    type = map 
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"

    }
  
}

variable "db_sg_description" {
    default = "SG for DB mysql instance"
  
}