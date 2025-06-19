# YAML in Terraform (Terraform Variables)

```yaml
# terraform-vars.yaml
region: us-east-1
instance_type: t2.micro
tags:
  env: prod
  team: devops
```

**Use case**: Provision EC2 instances and configure them at boot using Terraform user data.

