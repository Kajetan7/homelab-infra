# homelab-az


My super simple cv-page setup for Azure – all infra as code (Terraform) and automated with github workflows.

Used for hosting [mroske.pro](https://mroske.pro) and for cloud/infra experiments.

## Folder structure

```
cv-page/
  main.tf           
  variables.tf       
  outputs.tf         
  provider.tf       
  custom_domains.tf 
.github/
  workflows/
    tf-apply.yaml  
    tf-destroy.yaml  
```