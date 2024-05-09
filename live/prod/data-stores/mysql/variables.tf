variable "db_username" {
  description = "The username for the database"
  type = string
  sensitive = true
  
  # Use Secrets Manager to store the username
  # default = "admin"
}

variable "db_password" {
  description = "The password for the database"
  type = string
  sensitive = true

  # Use Secrets Manager to store the password
  # default = "!QAZ2wsx3edc"
}

variable "db_name" {
  description = "The name to use for the database"
  type = string
  default = "example_database_prod"
}
