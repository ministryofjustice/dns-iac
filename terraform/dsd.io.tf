module "dsd_io" {
  source = "./modules/route53"

  domain      = "dsd.io"
  description = "Used for Digital Service Department (deprecated domain)"

  tags = {
    component = "None"
  }
}
