# GitHub Actions: Multiple Workflows & Jobs

In GitHub Actions, you can break your automation into multiple workflows, and each workflow can contain multiple jobs. This enhances modularity, parallelism, and clarity in your CI/CD pipelines.

**File structure**:
```bash
.github/
└── workflows/
    ├── ci.yml          # Testing + Linting
    └── deploy.yml      # Deployment only
```

## `ci.yml`: Combined Linting & Testing with Multiple Jobs
```bash
name: CI - Lint and Test Python App

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  lint:
    name: 🧹 Lint Python Code
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Code
        uses: actions/checkout@v3

      - name: Set up Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.10'

      - name: Install Flake8
        run: pip install flake8

      - name: Run Linter
        run: flake8 .

  test:
    name: 🧪 Run Unit Tests
    runs-on: ubuntu-latest
    needs: lint  # This ensures tests run only after linting passes

    steps:
      - name: Checkout Code
        uses: actions/checkout@v3

      - name: Set up Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.10'

      - name: Install Dependencies
        run: |
          python -m pip install --upgrade pip
          pip install -r requirements.txt
          pip install pytest

      - name: Run Tests
        run: pytest tests/
```

## `deploy.yml`: Deployment Workflow with Pre-check Job
```bash
name: CD - Deploy Python App

on:
  push:
    branches: [main]

jobs:
  check-ready:
    name: ✅ Check Deployment Prerequisites
    runs-on: ubuntu-latest

    steps:
      - name: Ensure SSH Secret Exists
        run: |
          if [ -z "${{ secrets.SSH_USER }}" ]; then
            echo "SSH_USER secret not found!"
            exit 1
          fi

  deploy:
    name: 🚀 Deploy to Server
    runs-on: ubuntu-latest
    needs: check-ready

    steps:
      - name: Checkout Code
        uses: actions/checkout@v3

      - name: Set up Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.10'

      - name: Install Dependencies
        run: pip install -r requirements.txt

      - name: Deploy Script
        env:
          SSH_USER: ${{ secrets.SSH_USER }}
          SSH_HOST: ${{ secrets.SSH_HOST }}
        run: |
          ssh $SSH_USER@$SSH_HOST 'bash -s' < ./scripts/deploy.sh
```

## Best Practices
- Use `needs`: to enforce job dependencies
- Secure sensitive info using GitHub Secrets
- Use small, purpose-specific workflows (CI, CD, monitor, etc.)
- Make jobs fail fast to reduce waste of compute