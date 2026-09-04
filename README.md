# CartForge Jenkins Continuous Integration Project

## Project Overview

This project demonstrates the implementation of a Jenkins Continuous Integration environment for the CartForge application.

The environment uses AWS EC2 instances, Jenkins, GitHub, Git, Node.js, npm, a Jenkins Agent, Jenkins Pipeline, GitHub Webhooks, and Jenkins artifacts.

## Jenkins Architecture

The CI environment consists of:

- Jenkins Server running on Ubuntu EC2
- Jenkins Agent running on a separate Ubuntu EC2 instance
- GitHub repository containing the CartForge source code
- Jenkins Pipeline for automated CI
- GitHub Webhook for automatic build triggering
- Jenkins artifact generated after a successful build

Flow:

GitHub → Webhook → Jenkins Server → Jenkins Agent → Build/Test/Package → Artifact

## Installation

### Jenkins Server

Installed on Ubuntu EC2:

- Java
- Jenkins
- Git
- Node.js
- npm

Jenkins was enabled and started using systemd.

### Jenkins Agent

A second Ubuntu EC2 instance was configured as a permanent Jenkins Agent.

SSH authentication was configured between the Jenkins Server and Agent.

## Jenkins Configuration

### Freestyle Job

Job name:

`CartForge-Freestyle`

The Freestyle job was configured to retrieve source code from GitHub and execute build commands.

### Pipeline Job

Job name:

`CartForge-Pipeline`

The pipeline was configured to execute on the Jenkins Agent using the label:

`cartforge-agent`

## Pipeline Workflow

The Jenkinsfile contains the following stages:

1. Clone Source Code
2. Install Dependencies
3. Build Application
4. Run Tests
5. Package Application
6. Deliver Artifact

All stages completed successfully.

## GitHub Webhook

A GitHub repository webhook was configured to:

`http://<JENKINS-PUBLIC-IP>:8080/github-webhook/`

The webhook listens for push events.

A README commit successfully triggered Jenkins Build #3 automatically.

## Artifact

The pipeline generates:

`CartForge-artifact.tar.gz`

The artifact was successfully archived by Jenkins after the pipeline completed.

## Commands Used

### Check Jenkins

```bash
sudo systemctl status jenkins
