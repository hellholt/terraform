module "repositories" {
  source = "github.com/bitterbridge/terraform-modules//terraform/modules/repositories?ref=v0.0.484"

  organization_name = "hellholt"
}

module "organization_basic" {
  source = "github.com/bitterbridge/terraform-modules//terraform/modules/organization_basic?ref=v0.0.484"

  organization_name = "hellholt"
  repositories      = keys(module.repositories.repositories)
}
