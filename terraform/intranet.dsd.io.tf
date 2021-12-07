module "intranet_dsd_io" {
  source = "./modules/route53"

  domain      = "intranet.dsd.io"
  description = "Domain used by MoJ Intranet (confirmed 30 March 2021)"

  tags = {
    component = "None"
  }
}
