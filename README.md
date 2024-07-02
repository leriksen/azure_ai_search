NOTE - below not applicable - uses local storage, not integrated to AzDo yet


Apart from forking this repo, you need the following in Azure RM or Azure DevOps

# DevOps

## Library Variables

| group           | variable           | default            | description                                                                                                                                                                     |
|-----------------|--------------------|--------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| terraform_base  | terraform_version  | 1.5.7              | match your local tf version to the pipeline                                                                                                                                     |
| terraform_base  | terraform_path     | /usr/local/bin     | path to a custom install if required                                                                                                                                            |
| devops_base     | project            |                    |                                                                                                                                                                                 |
| devops_non_prod | sa                 | <project>terraform | the storage account holding the containers with terraform state files                                                                                                           |
| devops_non_prod | subscription_id    |                    |                                                                                                                                                                                 |
| devops_dev      | container          | terraform          | the container in the sa                                                                                                                                                         |
| devops_dev      | environment        |                    | the name of the environment in azure devops we are deploying to                                                                                                                 |
| devops_dev      | service_connection |                    | he name of the service connection in AZDO holding the creds for a service principal in the testing subscription, and the subscriptionwe are deploying resources to, in Azure RM |

## Service Connection

This needs `Storage Account Blob Contributor` on the `tfminit` SA in the `testing` subscription, and `Contributor` on the subscription we will be deploying resources to.

## Pipelines

Grant open permissions to the variable groups you use for the `Library Variables` section

# Azure RM

## Service Principal
  - create and grant roles as described above

## Subscription
  - if not deploying to `testing`, create a subscription and grant the `Contributor` role on the subscription, to the SP created above
