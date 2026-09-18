This repository contains the complete infrastructure deployment and application files for running WordPress on AWS inside a custom VPC with an Application Load Balancer (ALB).

## Architecture & Flow
              [ Internet Users ]
                      │
                      ▼
        [ Application Load Balancer ]
                      │
        ┌─────────────┴─────────────┐
        ▼                           ▼
[ Public Subnet 1a ]        [ Public Subnet 1b ]
┌──────────────────┐        ┌──────────────────┐
│ WordPress Service│        │ WordPress Service│
│   (EC2 / ECS)    │        │   (EC2 / ECS)    │
└─────────┬────────┘        └─────────┬────────┘
│                           │
└─────────────┬─────────────┘
│
▼
[ Private Subnet / DB ]
┌─────────────────────┐
│   MySQL Database    │
└─────────────────────┘


- **VPC & Subnets:** Multi-AZ setup with public subnets in `us-east-1a` and `us-east-1b`.
- **Load Balancer:** Application Load Balancer (`wordpress-alb`) listening on HTTP Port 80.
- **Database:** Isolated MySQL instance in private database subnet.
