# YAML in GitHub Actions

## CI/CD Workflow Example

```yaml
name: CI Pipeline
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v2

      - name: Setup Python
        uses: actions/setup-python@v4
        with:
          python-version: 3.9

      - name: Install Dependencies
        run: pip install -r requirements.txt

      - name: Run Tests
        run: pytest
```

**Use case**: Automate testing and deployment on GitHub.