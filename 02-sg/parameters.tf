resource "aws_ssm_parameter" "db_sg_id" {
  name  = "/${var.project}/${var.environment}/db_sg_id"
  type  = "String"
  value = module.db.sg_id
}

resource "aws_ssm_parameter" "backend_sg_id" {
  name  = "/${var.project}/${var.environment}/backend_sg_id"
  type  = "String"
  value = module.backend.sg_id
}

resource "aws_ssm_parameter" "frontend_sg_id" {
  name  = "/${var.project}/${var.environment}/frontend_sg_id"
  type  = "String"
  value = module.frontend.sg_id
}

resource "aws_ssm_parameter" "bastion_sg_id" {
  name  = "/${var.project}/${var.environment}/bastion_sg_id"
  type  = "String"
  value = module.bastion.sg_id
}

resource "aws_ssm_parameter" "ansible_sg_id" {
  name  = "/${var.project}/${var.environment}/ansible_sg_id"
  type  = "String"
  value = module.ansible.sg_id
}