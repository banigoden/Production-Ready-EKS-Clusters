env                   = "prod"
aws-region            = "eu-central-1"
vpc-cidr-block        = "10.0.0.0/16"
vpc-name              = "vpc-prod"
igw-name              = "igw-prod"
pub-subnet-count      = 3
pub-cidr-block        = ["10.0.0.0/20", "10.0.16.0/20", "10.0.32.0/20"]
pub-availability-zone = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
pub-sub-name          = "subnet-public-prod"
pri-subnet-count      = 3
pri-cidr-block        = ["10.0.128.0/20", "10.0.144.0/20", "10.0.160.0/20"]
pri-availability-zone = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
pri-sub-name          = "subnet-private-prod"
public-rt-name        = "public-route-table-prod"
private-rt-name       = "private-route-table-prod"
eip-name              = "elasticip-ngw-prod"
ngw-name              = "ngw-prod"
eks-sg                = "eks-sg-prod"

# EKS
is-eks-cluster-enabled     = true
cluster-version            = "1.29"
cluster-name               = "eks-cluster-prod"
endpoint-private-access    = true
endpoint-public-access     = true
ondemand_instance_types    = ["t3a.medium"]
spot_instance_types        = ["t3a.large", "t3a.xlarge", "t3a.medium"]
desired_capacity_on_demand = "2"
min_capacity_on_demand     = "2"
max_capacity_on_demand     = "10"
desired_capacity_spot      = "2"
min_capacity_spot          = "2"
max_capacity_spot          = "8"
addons = [
  {
    name    = "vpc-cni",
    version = "v1.18.1-eksbuild.1"
  },
  {
    name    = "coredns"
    version = "v1.11.1-eksbuild.9"
  },
  {
    name    = "kube-proxy"
    version = "v1.29.3-eksbuild.2"
  },
  {
    name    = "aws-ebs-csi-driver"
    version = "v1.30.0-eksbuild.1"
  }
]
