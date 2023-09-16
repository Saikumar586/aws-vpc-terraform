

variable "enable_dns_hostnames" {

    value = "true"
  
}

variable "enable_dns_support" {


    value = "true"

}

variable "cidr_blocks" {

   # default = "10.0.0.0/16"
}


variable "tags_name"{
    default = {}
    type = map

}

variable "vpc_tags" {

    default = {}
    type = map
  
}

variable "ig_tags" {

default = {}
    type = map  
}

variable "public_subnet_tags" {

    default = {}
}

variable "private_subnet_tags"{


    default = {}
}

variable "azs" {

    default = {}
  
}

variable "database_subnet_tags" {

    default = {}
}

variable "public_subnet" {
    
}

variable "private_subnet" {
    
}

variable "database_subnet" {
    
}

