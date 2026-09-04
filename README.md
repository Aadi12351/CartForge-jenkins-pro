# CartForge Jenkins CI Project

## Project Overview

This project demonstrates a Continuous Integration environment using Jenkins, GitHub, AWS EC2, and a Jenkins Agent.

## Technologies Used

- Jenkins
- GitHub
- AWS EC2
- Ubuntu Linux
- Git
- Node.js
- npm

## CI Pipeline

The Jenkins pipeline contains the following stages:

1. Clone Source Code
2. Install Dependencies
3. Build Application
4. Run Tests
5. Package Application
6. Deliver Artifact

## Jenkins Infrastructure

- Jenkins Controller: AWS EC2
- Jenkins Agent: AWS EC2
- Agent Label: `cartforge-agent`

## Build Artifact

The pipeline generates:

`CartForge-artifact.tar.gz`

## GitHub Integration

A GitHub webhook is configured to automatically trigger the Jenkins pipeline whenever changes are pushed to the `main` branch.

## Project Outcome

The project demonstrates automated source-code checkout, dependency installation, application build, testing, packaging, artifact generation, and GitHub-triggered Jenkins builds.
