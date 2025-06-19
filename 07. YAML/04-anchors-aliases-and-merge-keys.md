# Anchors, Aliases, and Merge Keys

## Avoid Repetition with Anchors and Aliases
```yaml
defaults: &defaults
  timeout: 30
  retries: 3

server:
  <<: *defaults # Merges defaults
  port: 80
  host: "example.com"
```

## Multi-document YAML (---)
A YAML file with multiple documents would look like this, where each new document is indicated by `---`.
```yaml
# Document 1
---
name: App1
port: 80

# Document 2
---
name: App2
port: 443
```

## Templating with YAML (Jinja in Ansible)
```yaml
vars:
  app_port: 8080

server:
  port: "{{ app_port }}"
```

**Use case**: Kubernetes manifests or Ansible playbooks where the same config is reused.