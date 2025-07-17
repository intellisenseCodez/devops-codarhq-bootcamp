# Creating Multiple Workflows in GitHub Actions
GitHub Actions allows you to define multiple workflows in the same repository to organize different automation tasks (e.g., testing, deployment, linting, etc.).

Each workflow file should live inside the .github/workflows/ directory of your repository.

## Why Use Multiple Workflows?
- **Clear responsibilities**: Tests, linting, and deployment don’t interfere.

- **Faster feedback**: Parallel workflow runs.

- **Flexible triggers**: E.g., lint only on PRs, deploy only on push to main.

- **Better visibility**: Separate logs and status for each workflow.

**File structure**:
```bash
.github/
└── workflows/
    ├── test.yml
    ├── deploy.yml
    └── lint.yml
```

## Workflow 1: test.yml — Run Python Tests on Push
```bash
name: Python Tests

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Set up Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.10'

      - name: Install dependencies
        run: |
          python -m pip install --upgrade pip
          pip install -r requirements.txt

      - name: Run tests
        run: pytest tests/
```

## Workflow 2: lint.yml — Lint Python Code on Pull Requests
```bash
name: Python Linting

on:
  pull_request:
    branches: [main]

jobs:
  lint:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Set up Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.10'

      - name: Install flake8
        run: pip install flake8

      - name: Run flake8 linter
        run: flake8 .
```

## Workflow 3: deploy.yml — Deploy Python App on Push to Main
```bash
name: Deploy Python App

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Set up Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.10'

      - name: Install dependencies
        run: pip install -r requirements.txt

      - name: Run deployment script
        env:
          SSH_USER: ${{ secrets.SSH_USER }}
          SSH_HOST: ${{ secrets.SSH_HOST }}
        run: |
          ssh $SSH_USER@$SSH_HOST 'bash -s' < ./scripts/deploy.sh
```

## Best Practices
- Pin versions of actions (actions/checkout@v3, actions/setup-python@v4).
- Use secrets for sensitive info (SSH_USER, SSH_HOST).
- Add notifications for failed jobs.