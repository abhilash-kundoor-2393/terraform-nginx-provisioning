variable "region" {
  description = "AWS region where resources needs to be deployed"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block of VPC"
  type        = string
  default     = "10.0.0.0/16"
}