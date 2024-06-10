data "aws_ssm_parameter" "backend_sg_id" {
  name = "/${var.project}/${var.environment}/backend_subnet_id"
}

data "aws_ssm_parameter" "frontend_sg_id" {
  name = "/${var.project}/${var.environment}/frontend_subnet_id"
}

data "aws_ssm_parameter" "ansible_sg_id" {
  name = "/${var.project}/${var.environment}/ansible_sg_id"
}





data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.project}/${var.environment}/private_subnet_ids"
}

data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.project}/${var.environment}/public_subnet_ids"
}


data "aws_ami" "ami_id" {
    most_recent = true
    owners = ["973714476881"]

    filter {
        name   = "state"
        values = ["available"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}