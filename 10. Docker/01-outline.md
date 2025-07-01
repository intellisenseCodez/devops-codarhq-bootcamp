
# 🐳  Docker for DevOps Engineers

## 🎯 Course Objective:
Equip DevOps engineers with deep knowledge of Docker — from container basics to advanced orchestration, security, CI/CD integration, and real-world deployment practices.

- **Module 1**: Introduction to Containers and Docker
    - **Topics**:
        - What is a container?
        - Virtual Machines vs. Containers
        - Benefits of using containers in DevOps
        - What is Docker? History and ecosystem

    - **Labs**:
        - Install Docker on Linux, macOS, Windows
        - Run your first container: `hello-world`
    
    <hr>

- **Module 2**: Working with Docker Images and Containers
    - **Topics**:
        - Understanding Docker architecture (daemon, client, registries)
        - Pulling and running images
        - Docker commands: run, exec, ps, logs, rm, stop, start
        - Exposing Ports
        - Creating and managing containers
        - Interactive vs detached mode

    - **Labs**:
        - Run and explore Ubuntu, Nginx, and Python containers
        - Bash into a running container and install packages

    <hr>

- **Module 3**: Docker Volumes & Persistent Storage
    - **Topics**:
        - Volumes vs. bind mounts vs tmpfs Mounts
        - Data persistence in containers
        - Named volumes and anonymous volumes
        - Volume drivers

    - **Labs**:
        - Create a volume and attach it to a MySQL container
        - Backup and restore container data using volumes

    <hr>

- **Module 4**: Docker Images & Dockerfile
    - **Topics**:
        - What is a Docker image?
        - Layers and caching
        - Writing Dockerfiles (step-by-step)
        - Image tagging and versioning
        - Multistage builds

    - **Labs**:
        - Create a custom image for a Flask app
        - Dockerfile best practices

    <hr>

- **Module 5**: Docker Networking
    - **Topics**:
        - Container networking basics
        - Bridge, host, none, and overlay networks
        - DNS and container communication
        - Exposing and publishing ports

    - **Labs**:
    - Deploy a multi-container app with custom networks
    - Test internal and external networking

    <hr>

- **Module 6**: Docker Compose
    - **Topics**:
        - What is Docker Compose?
        - Defining multi-container applications
        - docker-compose.yml structure
        - Compose commands: up, down, build, logs
        - Environment variables and .env files

    - **Labs**:
        - Build and deploy a LAMP stack using Docker Compose
        - Add Redis or Memcached as a cache service

    <hr>

- **Module 7**: Docker Security Essentials
    - **Topics**:
        - Least privilege principle
        - Docker user namespaces
        - Image vulnerabilities and scanning
        - Secrets management
        - Docker Bench for Security

    - **Labs**:
        - Scan an image with Docker Scout or Trivy
        - Create a non-root Dockerfile
        - Isolate containers using user namespaces

