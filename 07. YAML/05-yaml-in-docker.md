# YAML in Docker

## docker-compose.yml

```yaml
version: '3'
services:
  web:
    image: nginx:alpine
    ports:
      - "80:80"
  db:
    image: mysql:5.7
    environment:
      MYSQL_ROOT_PASSWORD: root
```

**Use case**: Define and run multi-container Docker applications.

