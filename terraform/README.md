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
```

---

# Challenges Encountered & Resolutions

### Terraform Resource Dependency & Infrastructure Sequencing

One issue I ran into during the project was inconsistent Terraform deployments caused by resource dependency and sequencing behavior across interconnected AWS components. Certain resources would attempt to provision before dependent infrastructure was fully ready, which resulted in partial applies and failed deployments.

I fixed this by restructuring portions of the Terraform configuration, cleaning up module references and outputs, and improving the deployment flow between dependent resources. After tightening the infrastructure organization and sequencing, deployments became much more consistent and predictable across the environment.

---

### IAM Role & Service Permission Troubleshooting

Another issue I encountered involved IAM execution-role permissions between AWS services. Some infrastructure components deployed successfully, but service integrations failed during runtime because of incorrect role permissions and trust relationships between services.

I resolved this by reviewing IAM policies, validating trust relationships, and refining least-privilege access between the resources involved. This helped stabilize service communication and improved overall deployment reliability and security posture.

---

### Networking & Traffic Flow Validation

I also ran into connectivity and routing issues while validating communication between resources inside the AWS environment. Some infrastructure components were reachable while others were not behaving as expected after deployment, which required deeper troubleshooting of routing and traffic flow across the VPC.

I worked through this by validating subnet associations, reviewing route tables and security-group rules, and tracing how traffic moved between resources. This helped resolve the communication issues and improved the consistency and reliability of the environment overall.