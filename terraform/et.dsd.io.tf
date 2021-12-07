module "et_dsd_io" {
  source = "./modules/route53"

  domain = "et.dsd.io"

  tags = {
    component = "None"
  }
}
