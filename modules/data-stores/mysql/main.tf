resource "aws_db_instance" "example" {
  identifier_prefix = "terraform-up-and-running"
  instance_class = "db.t3.small"
  skip_final_snapshot = true

  # バックアップを有効化
  backup_retention_period = var.backup_retention_period

  # 設定されている場合は、このDBインスタンスはレプリカ
  replicate_source_db = var.replicate_source_db

  # replicate_source_dbが設定されていない場合のみ、以下の設定が有効
  engine            = var.replicate_source_db == null ? "mysql" : null
  allocated_storage = var.replicate_source_db == null ? 10 : null
  db_name           = var.replicate_source_db == null ? var.db_name : null
  username          = var.replicate_source_db == null ? var.db_username : null
  password          = var.replicate_source_db == null ? var.db_password : null
}
