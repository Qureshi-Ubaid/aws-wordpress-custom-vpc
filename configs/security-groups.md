# Security Group Rules

## ALB Security Group (`sg-alb`)
| Direction | Type | Port | Source | Description |
|-----------|------|------|--------|-------------|
| Inbound   | HTTP | 80   | 0.0.0.0/0 | Public Web Access |

## EC2 / ECS Security Group (`sg-app`)
| Direction | Type | Port | Source | Description |
|-----------|------|------|--------|-------------|
| Inbound   | HTTP | 80   | `sg-alb` | Traffic from ALB only |
| Inbound   | SSH  | 22   | Your-IP | Management Access |

## Database Security Group (`sg-db`)
| Direction | Type | Port | Source | Description |
|-----------|------|------|--------|-------------|
| Inbound   | MySQL | 3306 | `sg-app` | Connections from Web Tier |
