module "users" {
  source = "../../../modules/landing-zone/iam-user"

  for_each = toset(var.user_names)
  user_name = each.value
}
