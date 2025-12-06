# projectTF
TF integration check

# Important Basic comments

# VPC
aws_vpc
aws_vpc.main.id
aws_vpc.main.arn
aws_vpc.main.cidr_block
aws_vpc.main.default_route_table_id
aws_vpc.main.main_route_table_id

# Subnets
aws_subnet
aws_subnet.public.id
aws_subnet.private.id
aws_subnet.public[*].id (with count/for_each)
aws_subnet.public.availability_zone

# Internet Gateway
aws_internet_gateway
aws_internet_gateway.main.id
aws_internet_gateway.main.arn

# Route Tables
aws_route_table
aws_route_table.main.id
aws_route_table.main.arn
aws_route_table_association
aws_route_table_association.public_subnet_association.id

# Security Groups
aws_security_group
aws_security_group.main.id
aws_security_group.main.arn
aws_security_group.main.name
aws_security_group.main.vpc_id

# EC2 Instances
aws_instance
aws_instance.web.id
aws_instance.web.arn
aws_instance.web.public_ip
aws_instance.web.private_ip
aws_instance.web.public_dns
aws_instance.web.private_dns
aws_instance.web.availability_zone

# Elastic IP
aws_eip
aws_eip.main.id
aws_eip.main.public_ip
aws_eip.main.private_ip
aws_eip.main.association_id

# Load Balancers (ALB/NLB)
aws_lb
aws_lb.app.id
aws_lb.app.arn
aws_lb.app.dns_name
aws_lb.app.zone_id
aws_lb_target_group
aws_lb_target_group.app.id
aws_lb_target_group.app.arn

# S3 Buckets
aws_s3_bucket
aws_s3_bucket.bucket.id (bucket name)
aws_s3_bucket.bucket.arn
aws_s3_bucket.bucket.bucket_domain_name
aws_s3_bucket.bucket.region

# IAM
aws_iam_role
aws_iam_role.main.id
aws_iam_role.main.arn
aws_iam_role.main.name
aws_iam_policy
aws_iam_policy.policy.arn

# Lambda Functions
aws_lambda_function
aws_lambda_function.fn.arn
aws_lambda_function.fn.function_name
aws_lambda_function.fn.invoke_arn

# RDS
aws_db_instanc
aws_db_instance.db.id
aws_db_instance.db.arn
aws_db_instance.db.address (hostname)
aws_db_instance.db.endpoint
aws_db_instance.db.port

# EKS (Kubernetes)
aws_eks_cluster
aws_eks_cluster.main.id
aws_eks_cluster.main.arn
aws_eks_cluster.main.endpoint
aws_eks_cluster.main.certificate_authority.0.data
aws_eks_node_group
aws_eks_node_group.main.id
aws_eks_node_group.main.arn

# VPC Endpoints
aws_vpc_endpoint
aws_vpc_endpoint.s3.id
aws_vpc_endpoint.s3.arn
aws_vpc_endpoint.s3.network_interface_ids

# Additional Useful Terraform Functions With AWS Resources Purpose Example

Get all IDs	aws_subnet.public[*].id
Convert map to list	values(var.tags)
Get length	length(var.subnets)
Select first subnet	aws_subnet.public[0].id
Merge maps	merge(var.common_tags, var.env_tags)
