# Criar uma instância RDS PostgreSQL
resource "aws_db_instance" "PostgreSQL" {
  identifier             = "postgres-db"
  allocated_storage      = 20
  engine                 = "postgres"
  instance_class         = "db.t4g.micro"
  username               = "postgres"
  password               = "yourpassword123"
  db_subnet_group_name   = aws_db_subnet_group.rds-sub.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  skip_final_snapshot    = true
}

