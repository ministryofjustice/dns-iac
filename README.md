# DNS records as infrastructure-as-code

[![repo standards badge](https://img.shields.io/endpoint?labelColor=231f20&color=005ea5&style=for-the-badge&label=MoJ%20Compliant&url=https%3A%2F%2Foperations-engineering-reports.cloud-platform.service.justice.gov.uk%2Fapi%2Fv1%2Fcompliant_public_repositories%2Fendpoint%2Fdns-iac&logo=data:image/png;base64,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)](https://operations-engineering-reports.cloud-platform.service.justice.gov.uk/public-github-repositories.html#dns-iac)

This repository holds most of the Ministry of Justice's DNS estate.

This repository currently manages:

| Domain name                                                                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [admin.courttribunalformfinder.service.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/admin.courttribunalformfinder.service.gov.uk.tf)       |
| [admin.tribunalsdecisions.service.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/admin.tribunalsdecisions.service.gov.uk.tf)                 |
| [ahmlr.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/ahmlr.gov.uk.tf)                                                                       |
| [appeal-tax-tribunal.service.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/appeal-tax-tribunal.service.gov.uk.tf)                           |
| [appeals-service.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/appeals-service.gov.uk.tf)                                                   |
| [asylum-support-tribunal.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/asylum-support-tribunal.gov.uk.tf)                                   |
| [blogs.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/blogs.justice.gov.uk.tf)                                                       |
| [brookhouseinvestigation.independent.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/brookhouseinvestigation.independent.gov.uk.tf)           |
| [carestandardstribunal.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/carestandardstribunal.gov.uk.tf)                                       |
| [ccrc.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/ccrc.gov.uk.tf)                                                                         |
| [checklegalaid.service.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/checklegalaid.service.gov.uk.tf)                                       |
| [cicap.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/cicap.gov.uk.tf)                                                                       |
| [civilappeals.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/civilappeals.gov.uk.tf)                                                         |
| [civilclaims.service.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/civilclaims.service.gov.uk.tf)                                           |
| [civillegaladvice.service.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/civillegaladvice.service.gov.uk.tf)                                 |
| [cjit.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/cjit.gov.uk.tf)                                                                         |
| [cjs.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/cjs.gov.uk.tf)                                                                           |
| [cjsm.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/cjsm.justice.gov.uk.tf)                                                         |
| [cjsonline.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/cjsonline.gov.uk.tf)                                                               |
| [courtfines.direct.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/courtfines.direct.gov.uk.tf)                                               |
| [courtfunds.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/courtfunds.gov.uk.tf)                                                             |
| [courts.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/courts.gov.uk.tf)                                                                     |
| [courttribunalformfinder.service.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/courttribunalformfinder.service.gov.uk.tf)                   |
| [criminal-justice-system.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/criminal-justice-system.gov.uk.tf)                                   |
| [criminal-justice.royal-commission.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/criminal-justice.royal-commission.uk.tf)                       |
| [dca.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/dca.gov.uk.tf)                                                                           |
| [devl.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/devl.justice.gov.uk.tf)                                                         |
| [digital.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/digital.justice.gov.uk.tf)                                                   |
| [dsd.io](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/dsd.io.tf)                                                                                   |
| [dugganinquest.independent.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/dugganinquest.independent.gov.uk.tf)                               |
| [employmentappeals.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/employmentappeals.gov.uk.tf)                                               |
| [employmenttribunals.service.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/employmenttribunals.service.gov.uk.tf)                           |
| [et.dsd.io](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/et.dsd.io.tf)                                                                             |
| [exchange.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/exchange.gov.uk.tf)                                                                 |
| [financeandtaxtribunals.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/financeandtaxtribunals.gov.uk.tf)                                     |
| [g.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/g.justice.gov.uk.tf)                                                               |
| [hillsboroughinquests.independent.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/hillsboroughinquests.independent.gov.uk.tf)                 |
| [hmctsformfinder.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/hmctsformfinder.justice.gov.uk.tf)                                   |
| [hmiprisons.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/hmiprisons.gov.uk.tf)                                                             |
| [hmiprobation.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/hmiprobation.gov.uk.tf)                                                         |
| [hmprisonservice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/hmprisonservice.gov.uk.tf)                                                   |
| [immigrationappealsonline.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/immigrationappealsonline.justice.gov.uk.tf)                 |
| [immigrationservicestribunal.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/immigrationservicestribunal.gov.uk.tf)                           |
| [in-addr.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/in-addr.justice.gov.uk.tf)                                                   |
| [informationtribunal.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/informationtribunal.gov.uk.tf)                                           |
| [intranet.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/intranet.justice.gov.uk.tf)                                                 |
| [judicialappointments.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/judicialappointments.gov.uk.tf)                                         |
| [judicialconduct.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/judicialconduct.gov.uk.tf)                                                   |
| [judicialconduct.judiciary.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/judicialconduct.judiciary.gov.uk.tf)                               |
| [judicialombudsman.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/judicialombudsman.gov.uk.tf)                                               |
| [judiciary.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/judiciary.gov.uk.tf)                                                               |
| [justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/justice.gov.uk.tf)                                                                   |
| [landstribunal.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/landstribunal.gov.uk.tf)                                                       |
| [lawcom.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/lawcom.gov.uk.tf)                                                                     |
| [lawcommission.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/lawcommission.gov.uk.tf)                                                       |
| [legal-aid-checker.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/legal-aid-checker.justice.gov.uk.tf)                               |
| [miscarriage-justice-compensation.service.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/miscarriage-justice-compensation.service.gov.uk.tf) |
| [mojprint.com](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/mojprint.com.tf)                                                                       |
| [moneyclaim.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/moneyclaim.gov.uk.tf)                                                             |
| [ospt.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/ospt.gov.uk.tf)                                                                         |
| [osscsc.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/osscsc.gov.uk.tf)                                                                     |
| [paroleboard.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/paroleboard.gov.uk.tf)                                                           |
| [pensionsappealtribunals.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/pensionsappealtribunals.gov.uk.tf)                                   |
| [possessionclaim.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/possessionclaim.gov.uk.tf)                                                   |
| [ppo.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/ppo.gov.uk.tf)                                                                           |
| [prisonandprobationjobs.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/prisonandprobationjobs.gov.uk.tf)                                     |
| [prisonvisits.service.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/prisonvisits.service.gov.uk.tf)                                         |
| [probationservice.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/probationservice.uk.tf)                                                         |
| [producttracker.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/producttracker.justice.gov.uk.tf)                                     |
| [publicguardian.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/publicguardian.gov.uk.tf)                                                     |
| [rpts.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/rpts.gov.uk.tf)                                                                         |
| [send-money-to-prisoner.service.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/send-money-to-prisoner.service.gov.uk.tf)                     |
| [sentencingcouncil.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/sentencingcouncil.gov.uk.tf)                                               |
| [service.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/service.justice.gov.uk.tf)                                                   |
| [sts.test.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/sts.test.justice.gov.uk.tf)                                                 |
| [test.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/test.justice.gov.uk.tf)                                                         |
| [transporttribunal.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/transporttribunal.gov.uk.tf)                                               |
| [tribunals.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/tribunals.gov.uk.tf)                                                               |
| [tribunalsdecisions.service.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/tribunalsdecisions.service.gov.uk.tf)                             |
| [ubi.courtfunds.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/ubi.courtfunds.gov.uk.tf)                                                     |
| [ukgovwales.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/ukgovwales.gov.uk.tf)                                                             |
| [video.service.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/video.service.justice.gov.uk.tf)                                       |
| [webapps.judiciary.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/webapps.judiciary.gov.uk.tf)                                               |
| [webchat.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/webchat.justice.gov.uk.tf)                                                   |
| [xhibit.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/xhibit.gov.uk.tf)                                                                     |
| [xhibit.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/xhibit.justice.gov.uk.tf)                                                     |
| [ybtj.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/ybtj.justice.gov.uk.tf)                                                         |
| [yjb.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/yjb.gov.uk.tf)                                                                           |
| [yjbpublications.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/yjbpublications.justice.gov.uk.tf)                                   |
| [yjils.justice.gov.uk](https://github.com/ministryofjustice/dns-iac/blob/main/terraform/yjils.justice.gov.uk.tf)                                                       |


## Scripts

### Fetch CloudWatch Metrics

The aim of this script is to provide information on the number of DNS queries made for a particular hosted zone over a specified time period.

This information can the be used to help determine whether or not it's safe to decommission a domain. It's worth noting that this information is only for **new** DNS queries for a domain, and does not account for any domain fetched from the cache on the resolver server, as this falls outside the available metrics for Route53.

#### Example Usage

```
python3 fetch-cloudwatch-metrics.py -z <Hosted Zone ID> -d 60 
```

For more information on optional perameters for the script, run:

```
python3 fetch-cloudwatch-metrics.py -h
```

