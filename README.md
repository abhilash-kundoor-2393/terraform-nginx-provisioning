# Terraform Project: terraform-nginx-provisioning

## Overview
This Terraform project provisions a scalable infrastructure on AWS, including a Virtual Private Cloud (VPC) with public and private subnets, Internet gateway, Security group and an EC2 instance.

---

## Prerequisites
- Terraform installed ([Install Guide](https://www.terraform.io/downloads.html))
- AWS CLI configured with proper credentials ([AWS CLI Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html))
- An AWS account

---

## Project Structure
```plaintext
.
├── main.tf             # Main Terraform configuration
├── variables.tf        # Input variable definitions
├── outputs.tf          # Output definitions
├── provider.tf         # Provider configuration
├── data.tf             # Data definitions
├── terraform.tfvars    # Default variable values
└── README.md           # Project documentation
```
## Usage
Clone the repository

```
git clone git@github.com:abhilash-kundoor-2393/terraform-nginx-provisioning.git
cd terraform-nginx-provisioning
```

Initialize Terraform
```
terraform init
```
Plan the Infrastructure
```
terraform plan
```
Apply the Configuration
```
terraform apply
```
Destroy the Infrastructure (when no longer needed)
```
terraform destroy
```
## Variables

| Variable Name      | Description                | Default Value |
|--------------------|----------------------------|---------------|
| `region`         | AWS region where resources needs to be deployed     | `us-east-1` |
| `vpc_cidr` | CIDR block of VPC     | `10.0.0.0/16` |
| `public_subnet_cidr`| CIDR blocks for the public subnets    | `["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]` |
| `private_subnet_cidr`| CIDR blocks for the private subnets    | `["10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24"]` |
| `ingress_rules`| List of ingress rules    | `[{from_port   = 80 to_port     = 80 protocol    = "tcp" cidr_blocks = ["0.0.0.0/0"]}]` |
| `instance_type`| Type of the EC2 instance    | `t2.micro` |

## Outputs

| Output Name      | Description                | 
|--------------------|----------------------------|
| `nginx_server_public_ip`         | Public ip of the nginx server     |

