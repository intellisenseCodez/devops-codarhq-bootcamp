# What is a branching strategy?
Branches are primarily used as a means for teams to develop features giving them a separate workspace for their code. These branches are usually merged back to a master branch upon completion of work. 

**A branching strategy, therefore, is the strategy that software development teams adopt when writing, merging and deploying code when using a version control system.**

## Why you need a branching strategy
A branching strategy aims to:
- Enhance productivity by ensuring proper coordination among developers
- Enable parallel development
- Help organize a series of planned, structured releases
- Map a clear path when making changes to software through to production
- Maintain a bug-free code where developers can quickly fix issues and get these changes back to production without disrupting the development workflow

## Common Git branching strategies?

### GitFlow
Considered to be a bit complicated and advanced for many of today’s projects, GitFlow enables parallel development where developers can work separately from the master branch on features where a feature branch is created from the master branch.

Afterwards, when changes are complete, the developer merges these changes back to the master branch for release.

This branching strategy consists of the following branches:

- **Master**
- **Develop**
- **Feature**- to develop new features that branches off the develop branch 
- **Release**- help prepare a new production release; usually branched from the develop branch and must be merged back to both develop and master
- **Hotfix**- also helps prepare for a release but unlike release branches, hotfix branches arise from a bug that has been discovered and must be resolved; it enables developers to keep working on their own changes on the develop branch while the bug is being fixed.

The main and develop branches are considered to be the main branches, with an infinite lifetime, while the rest are supporting branches that are meant to aid parallel development among developers, usually short-lived.

![""](../resources/images/gitflow-branching-strategy.png)

### GitHub Flow
GitHub Flow is a simpler alternative to GitFlow ideal for smaller teams as they don’t need to manage multiple versions.

Unlike GitFlow, this model doesn’t have release branches. You start off with the main branch then developers create branches, feature branches that stem directly from the master, to isolate their work which are then merged back into main. The feature branch is then deleted.

The main idea behind this model is keeping the master code in a constant deployable state and hence can support continuous integration and continuous delivery processes.

![""](../resources/images/github-flow-branching-model.jpeg)

### GitLab Flow
GitLab Flow is a simpler alternative to GitFlow that combines feature-driven development and feature branching with issue tracking.

With GitFlow, developers create a develop branch and make that the default while GitLab Flow works with the main branch right away.

GitLab Flow is great when you want to maintain multiple environments and when you prefer to have a staging environment separate from the production environment. Then, whenever the main branch is ready to be deployed, you can merge back into the production branch and release it.

![""](../resources/images/gitlab_flow_environment_branches.png)

### Trunk-based development
Trunk-based development is a branching strategy that in fact requires no branches but instead, developers integrate their changes into a shared trunk at least once a day. This shared trunk should be ready for release anytime.

The main idea behind this strategy is that developers make smaller changes more frequently and thus the goal is to limit long-lasting branches and avoid merge conflicts as all developers work on the same branch. In other words, developers commit directly into the trunk without the use of branches.

Consequently, trunk-based development is a key enabler of continuous integration (CI) and continuous delivery (CD)  since changes are done more frequently to the trunk, often multiple times a day (CI) which allows features to be released much faster (CD).

![""](../resources/images/trunk-based-development-branching-strategy.png)

