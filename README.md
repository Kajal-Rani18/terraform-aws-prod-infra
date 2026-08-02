# terraform-aws-prod-infra
Production-Ready AWS infrastructure using Terraform
Overview

This project provisions a modular AWS infrastructure using Terraform by following Infrastructure as Code (IaC) best practices. The infrastructure is organized into reusable modules and separate environments to improve maintainability, scalability, and code reusability.

The project demonstrates hands-on experience with Terraform modules, remote state management, AWS networking, and EC2 provisioning.

Architecture

The infrastructure deployed by this project includes:
Amazon VPC
Public Subnet
Internet Gateway
Route Table
Route Table Association
Security Group
EC2 Instance
Remote Terraform State (Amazon S3)
State Locking (Amazon DynamoDB)

Architecture Flow

                    AWS Cloud
                        │
                 ┌──────────────┐
                 │     VPC      │
                 └──────┬───────┘
                        │
                 Public Subnet
                        │
        ┌───────────────┴───────────────┐
        │                               │
 Internet Gateway                 Route Table
        │                               │
        └───────────────┬───────────────┘
                        │
          Route Table Association
                        │
                Security Group
                        │
                  EC2 Instance

Features:
Modular Terraform project structure
Environment separation (Development, QA, Production)
Remote backend using Amazon S3
State locking using DynamoDB
Reusable Terraform modules
Parameterized infrastructure using variables
Resource tagging support
Infrastructure version controlled with Git and GitHub       

Technologies Used
Terraform
AWS EC2
AWS VPC
Amazon S3
Amazon DynamoDB
Git
GitHub

Terraform Concepts Demonstrated
Infrastructure as Code (IaC)
Modular Terraform Design
Variables
Outputs
Resource Dependencies
Remote Backend
State Locking
Environment Separation
Reusable Modules
Resource Tagging

Learning Outcomes

Through this project, I gained practical experience in:

Designing reusable Terraform modules
Building AWS networking infrastructure
Managing Terraform remote state
Implementing Infrastructure as Code best practices
Organizing infrastructure across multiple environments
Managing resource dependencies
Provisioning AWS resources using Terraform
Version controlling infrastructure using Git and GitHub