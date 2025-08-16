# homelab-infra


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
k3s-lab-vm/
  main.tf
  variabes.tf
  outputs.tf
  provider.tf
  cloud-init.yaml
.github/
  workflows/
    cv-page-apply.yaml  
    cv-page-destroy.yaml
    k3s-vm.yaml
```