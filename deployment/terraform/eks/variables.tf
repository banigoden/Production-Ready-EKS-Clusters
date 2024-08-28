variable "env" {
  description = "The environment for the deployment (e.g., dev, prod)"
  type        = string
}

variable "aws-region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "vpc-cidr-block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc-name" {
  description = "The name of the VPC"
  type        = string
}

variable "igw-name" {
  description = "The name of the Internet Gateway"
  type        = string
}

variable "pub-subnet-count" {
  description = "The number of public subnets"
  type        = number
}

variable "pub-cidr-block" {
  description = "The CIDR blocks for public subnets"
  type        = list(string)
}

variable "pub-availability-zone" {
  description = "The availability zones for public subnets"
  type        = list(string)
}

variable "pub-sub-name" {
  description = "The name of the public subnet"
  type        = string
}

variable "pri-subnet-count" {
  description = "The number of private subnets"
  type        = number
}

variable "pri-cidr-block" {
  description = "The CIDR blocks for private subnets"
  type        = list(string)
}

variable "pri-availability-zone" {
  description = "The availability zones for private subnets"
  type        = list(string)
}

variable "pri-sub-name" {
  description = "The name of the private subnet"
  type        = string
}

variable "public-rt-name" {
  description = "The name of the public route table"
  type        = string
}

variable "private-rt-name" {
  description = "The name of the private route table"
  type        = string
}

variable "eip-name" {
  description = "The name of the Elastic IP"
  type        = string
}

variable "ngw-name" {
  description = "The name of the NAT Gateway"
  type        = string
}

variable "eks-sg" {
  description = "The name of the EKS security group"
  type        = string
}

# EKS Variables
variable "is-eks-cluster-enabled" {
  description = "Whether the EKS cluster should be enabled"
  type        = bool
}

variable "cluster-version" {
  description = "The version of the EKS cluster"
  type        = string
}

variable "cluster-name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "endpoint-private-access" {
  description = "Whether private access to the cluster endpoint should be enabled"
  type        = bool
}

variable "endpoint-public-access" {
  description = "Whether public access to the cluster endpoint should be enabled"
  type        = bool
}

variable "ondemand_instance_types" {
  description = "The instance types for on-demand instances"
  type        = list(string)
}

variable "spot_instance_types" {
  description = "The instance types for spot instances"
  type        = list(string)
}

variable "desired_capacity_on_demand" {
  description = "The desired capacity for on-demand instances"
  type        = string
}

variable "min_capacity_on_demand" {
  description = "The minimum capacity for on-demand instances"
  type        = string
}

variable "max_capacity_on_demand" {
  description = "The maximum capacity for on-demand instances"
  type        = string
}

variable "desired_capacity_spot" {
  description = "The desired capacity for spot instances"
  type        = string
}

variable "min_capacity_spot" {
  description = "The minimum capacity for spot instances"
  type        = string
}

variable "max_capacity_spot" {
  description = "The maximum capacity for spot instances"
  type        = string
}

variable "addons" {
  description = "A list of add-ons for the EKS cluster"
  type = list(object({
    name    = string
    version = string
  }))
}
