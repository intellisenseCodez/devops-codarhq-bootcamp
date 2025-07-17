# What Is GitHub Actions?

GitHub Actions is a platform for continuous integration / continuous delivery (CI/CD). It enables you to automate build, testing, and deployment pipelines. It also lets you run arbitrary code on a specified repository when an event occur.


## GitHub Actions Architecture and Concepts

GitHub Actions allows you to configure your workflow to be triggered once a specific event occurs in the repository. For example, when an issue is created or when a pull request is opened. 

![ Github Actions](../resources/images/GitHub-Actions-workflow-structure.webp)

- **GitHub Actions Workflows**

    A workflow is a configurable automated process that will run one or more jobs. Workflows are defined by a `YAML` file checked in to your repository and will run when triggered by an event in your repository, or they can be triggered manually, or at a defined schedule.

    All workflows are written in a specific file and in a specific directory on github that is: `.github/workflows/demofile.yml`


- **GitHub Actions Events**

    An event is a specific activity in a repository that triggers a workflow run. For example, activity can originate from GitHub when someone creates a pull request, opens an issue, or pushes a commit to a repository. 
    
    You can also trigger a workflow run on a schedule, by posting to a REST API, or man


- **GitHub Actions Jobs**

    A job is a set of steps in a workflow that execute on the same runner. Each step is either a shell script that will be executed, or an action that will be run. Steps are executed in order and are dependent on each other.


- **GitHub Actions Steps**

    In GitHub Actions, a step is a single task that runs as part of a job in your workflow. Steps are executed sequentially and can run shell commands or reuse existing actions (like plugins or shared modules).

- **Actions**

    An action is a custom application for the GitHub Actions platform that performs a complex but frequently repeated task. Use an action to help reduce the amount of repetitive code that you write in your workflow files.

- **Runners**

    A runner is a server that runs your workflows when they’re triggered. Each runner can run a single job at a time. 