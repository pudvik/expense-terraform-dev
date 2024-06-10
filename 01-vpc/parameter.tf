resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}


resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.project}/${var.environment}/public_subnet_ids"
  type  = "StringList"
  value = join("," ,module.vpc.public_subnet_ids) # converting list to string list
}

# resource "aws_ssm_parameter" "private_subnet_ids" {
#   name  = "/${var.project}/${var.environment}/private_subnet_ids"
#   type  = "StringList"
#   value = join(",",module.vpc.private_subnet_ids) # converting list to string list
# }

# resource "aws_ssm_parameter" "database_subnet_ids" {
#   name  = "/${var.project}/${var.environment}/database_subnet_ids"
#   type  = "StringList"
#   value = module.vpc.database_subnet_ids
# }

# resource "aws_ssm_parameter" "db_subnet_group_name" {
#   name  = "/${var.project}/${var.environment}/db_subnet_group_name"
#   type = "String"
#   value = module.vpc.database_subnet_group_name 
# }

resource "aws_ssm_parameter" "db_subnet_group_name" {
  name  = "/${var.project}/${var.environment}/db_subnet_group_name"
  type  = "String"
  value = module.vpc.database_subnet_group_name
}