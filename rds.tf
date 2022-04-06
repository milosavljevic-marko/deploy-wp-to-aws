resource "aws_db_instance" "default" {
  identifier              = "sample"
  allocated_storage       = 10
  max_allocated_storage   = 20
  storage_type            = "gp2"
  engine                  = "mysql"
  engine_version          = "5.7"
  instance_class          = "db.t2.micro"
  db_name                 = "wordpress"
  username                = "root"
  password                = "root"
  publicly_accessible     = true
  skip_final_snapshot     = true
} 
