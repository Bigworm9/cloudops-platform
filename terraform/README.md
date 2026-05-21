# CloudOps Platform

Terraform-managed AWS cloud infrastructure platform focused on Infrastructure as Code (IaC), cloud operations, scalable networking architecture, automation workflows, and future AI-driven operational integrations.

## Project Goals

This project was designed to simulate a modern cloud operations and platform engineering environment using AWS and Terraform. The platform focuses on:

- Infrastructure as Code (IaC)
- AWS Networking Architecture
- Multi-AZ High Availability Design
- Cloud Operations Automation
- Secure Public/Private Subnet Segmentation
- Terraform State & Deployment Management
- Git-based Infrastructure Version Control
- Future Kubernetes/EKS Integration
- Future AI-Driven CloudOps Workflows

---

# Current AWS Architecture

## Implemented Components

- Custom AWS VPC
- Multi-AZ Public Subnets
- Multi-AZ Private Subnets
- Internet Gateway
- Public Route Table
- Route Table Associations
- Terraform-managed Infrastructure
- Git Version Control & Repository Management

---

# Technologies Used

- AWS
- Terraform
- Git / GitHub
- PowerShell
- Infrastructure as Code (IaC)

---

# Networking Design

The platform currently utilizes a segmented AWS networking architecture:

## Public Subnets
Used for:
- Internet-facing resources
- Load balancers
- NAT Gateway placement

## Private Subnets
Used for:
- Backend services
- Future Kubernetes/EKS workloads
- Internal applications and databases

The architecture follows AWS best practices for subnet isolation and multi-Availability Zone resiliency.

---

# Terraform Workflow

Infrastructure deployment lifecycle includes:

```bash
terraform fmt
terraform validate
terraform plan
terraform apply