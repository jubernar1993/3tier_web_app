resource "aws_db_instance" "rdstest" {
  allocated_storage           = 10
  db_name                     = "webdb"
  engine                      = "mysql"
  engine_version              = "8.0"
  instance_class              = "db.t3.micro"
  manage_master_user_password = true
  username                    = "rdsusermain"
  parameter_group_name        = "default.mysql8.0"
}