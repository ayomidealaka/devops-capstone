[![CircleCI](https://circleci.com/gh/ayomidealaka/devops-capstone/tree/main.svg?style=svg)](https://circleci.com/gh/ayomidealaka/devops-capstone/tree/main)

# devops-capstone

This is a repository for Capstone of the **Cloud DevOps Engineer Nanodegree Program**.

This project applies the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program. These include:

- Working in AWS
- Using Jenkins or Circle CI to implement Continuous Integration and Continuous Deployment
- Building pipelines
- Working with Ansible and CloudFormation to deploy clusters
- Building Kubernetes clusters
- Building Docker containers in pipelines

## Summary of Repository files

- **index.html** - This file contains the app.
- **Makefile** - This file contains the setup, install, test and lint instructions for the virtual environment
- **run_docker.sh** - This script file creates a docker image. It contains instructions on the image name, tag etc.
- **Dockerfile** will copy `index.html` and expose port 80 where the app is running.
- **.circleci/config.yml** - contains circleci config.yml script to automate `make install`, `make lint`, create docker image and integrate with AWS EKS using continuous integration with Github.
