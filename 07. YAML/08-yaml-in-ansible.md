# YAML in Ansible

## Playbook Example

```yaml
---
- name: Install and start nginx
  hosts: webservers
  become: true
  tasks:
    - name: Install nginx
      apt:
        name: nginx
        state: present

    - name: Start nginx
      service:
        name: nginx
        state: started
```

**Use case**: Automate server provisioning and configuration.