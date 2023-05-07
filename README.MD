This module deploys a two server infrastructure on Aws EC2, one Windows(frontend) and one Linux(backend). A use case for this would be an application that comprises of two seperate layers, the application layer and the backend/database layer.

Prerequisites

- An Aws account(root or IAM user with the permissions to create and manage EC2, VPC infrastructure)

- Aws cli installed and configured with the above account credentials on your local machine, server or pipeline

- Terraform version >= v1.4.2 installed on your local machine, server or pipeline