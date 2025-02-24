# AWS-Infrastructure-Deployment-using-Terraform
This repository contains Terraform configurations to deploy and manage various AWS infrastructure components, including Compute EC2, VPC, and RDS databases. The project is designed to be modular, with separate modules for computing, databases, and networking resources, enabling easy scaling and adaptation of infrastructure components.

---
## **Prerequisites**
- **Terraform**: version 1.0 or higher.
- **AWS Account**: Create an AWS Account & have basic understanding of ECS, API Gateway, Docker & Python
- **AWS CLI Installed and Configured**: Install & configure AWS CLI to programatically interact with AWS

---

## **Technical Architecture**
![Architectural Diagram](https://github.com/Lugardesosa/DevOps-Project-Sports-API-Management-System-Deployment/blob/main/4th%20Day%20-%20Sports-API-Management-System-Deployment.png)

---

## **Project Structure**

```bash
Dynamic-aws-project/
├──.gitignore                # Git ignore file for excluding unnecessary files
├── work/                     # Main directory for Terraform configurations and state files
│   ├── terraform.tfstate      # Terraform state file
│   ├── terraform.lock.hcl    # Terraform lock file
│   ├── crash.log             # Terraform crash log
│   ├──.terraform/           # Directory containing Terraform's internal files
│   └── *.tfvars              # Terraform variable files (sensitive data)
├── modules/                  # Contains reusable Terraform modules
│   ├── compute/              # Compute-related Terraform resources
│   ├── database/             # Database-related Terraform resources
│   └── networking/           # Networking-related Terraform resources
├── main.tf                   # Main Terraform configuration file for the infrastructure
├── output.tf                 # Output variables of the infrastructure
├── variables.tf              # Input variables for the infrastructure
└── providers.tf              # Provider configurations (AWS)
```

**Description**
This repository utilizes Terraform to deploy various AWS resources, including:

VPCs (Virtual Private Clouds)
Subnets (both public and private)
Security Groups
NAT Gateways
Internet Gateways
EC2 Instances
RDS Databases
The infrastructure is designed to be modular, enabling easy scaling and adaptation of infrastructure components.

---

## **Setup Instructions**

### **Clone the Repository**
```bash
git clone https://github.com/Lugardesosa/DevOps-Project-Sports-API-Management-System-Deployment.git 
cd containerized-sports-api
```
### **Initialize Terraform**
Before applying any configuration, initialize Terraform to install the necessary provider plugins:
```bash
terraform init
```
## **Configure AWS Credentials**
Make sure AWS credentials are properly configured. You can do this using the AWS CLI or by setting the AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY environment variables:
```bash
aws configure
```
## **Terraform Plan**
To preview the changes that will be made to your AWS environment, run:
```bash
terraform plan
```
## **Apply Terraform Configuration**
To apply the Terraform configuration and provision the AWS infrastructure, run:
```bash
terraform apply
```
You'll be prompted to confirm the changes. Type yes to proceed.
## **Outputs**
After applying, the output.tf file will contain the output variables of your AWS infrastructure (e.g., VPC ID, Subnet IDs, etc.).
---

## **Gitignore**
This repository includes a .gitignore file to ensure that Terraform state files, lock files, and other sensitive or unnecessary files are not tracked by Git.

The following files and directories are ignored:
```bash
.terraform/
terraform.tfstate
terraform.tfstate.backup
terraform.lock.hcl
crash.log
*.tfvars
```
---

## **Modules**
This project uses a modular approach. Each module is contained in the modules/ directory and can be reused across different environments or configurations. The modules include:
compute: For creating EC2 instances and related resources. 
database: For managing RDS instances and related resources.
networking: For VPC, subnets, internet gateways, and route tables.

---
## **Conclusion**
In conclusion, the design and deployment of the AWS infrastructure using Terraform has been a successful endeavor. The modular approach to infrastructure as code has allowed for a scalable, secure, and efficient deployment of resources. The use of Terraform has enabled the automation of infrastructure provisioning, reducing the risk of human error and increasing the speed of deployment.

---
## **Future Enhancement**
- Expanding the infrastructure to include additional resources, such as load balancers and auto-scaling groups
- Implementing additional security measures, such as encryption and access controls
- Integrating Terraform with other DevOps tools, such as Jenkins and Docker, to create a comprehensive CI/CD pipeline


