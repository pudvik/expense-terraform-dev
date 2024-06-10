module "bastion" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "${var.project}-${var.environment}-bastion"

  instance_type          = "t2.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.bastion_sg_id.value]
  subnet_id              = local.subnet_id
  ami = data.aws_ami.ami_id.id


  tags = merge(
    var.common_tags,
    {
        Name = "${var.project}-${var.environment}-bastion"
    }
  )
}

 