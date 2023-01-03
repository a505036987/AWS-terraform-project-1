# Defining CIDR Block for VPC

# IP range : 10.150.0.0 ~ 10.150.8.255
variable "workspace-vpc" {
  default = "10.150.0.0/21"
}

# IP range : 10.150.24.1 ~ 10.150.28.255
variable "inspection-vpc" {
  default = "10.150.24.0/22"
}

# IP range : 10.150.28.1 ~ 10.150.32.255
variable "asiait-vpc" {
  default = "10.150.28.0/22"
}



# Defining CIDR Block for 1st Subnet
variable "asiait-public-a" {
  default = "10.150.28.0/25"
}
# Defining CIDR Block for 2nd Subnet
variable "asiait-public-c" {
  default = "10.150.28.128/25"
}
# Defining CIDR Block for 3rd Subnet
variable "asiait-private-a" {
  default = "10.150.29.0/25"
}
# Defining CIDR Block for 4rd Subnet
variable "asiait-private-c" {
  default = "10.150.29.128/25"
}

# Defining CIDR Block for NAT Subnet
variable "asiait-nat-a" {
  default = "10.150.30.0/25"
}
# Defining CIDR Block for NAT Subnet
variable "asiait-nat-c" {
  default = "10.150.30.128/25"
}

