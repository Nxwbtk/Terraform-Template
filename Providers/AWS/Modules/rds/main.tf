resource "aws_db_subnet_group" "this" {
  name       = var.subnet_group_name
  subnet_ids = var.subnet_ids
}

resource "aws_security_group" "this" {
  name   = var.security_group_name
  vpc_id = var.vpc_id
}

resource "aws_db_instance" "this" {
  db_name                = var.db_name
  engine                 = var.engine
  instance_class         = var.instance_class
  allocated_storage      = var.allocated_storage
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.this.name
  vpc_security_group_ids = [aws_security_group.this.id]
  skip_final_snapshot    = var.skip_final_snapshot
}
