variable "ami_id" {
  description = "variable for amazon linux 2 ami id"
  type        = string
  default     = "ami-0ddda618e961f2270"
}

variable "itype" {
  description = "variable for amazon linux 2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "az" {
  description = "variable for amazon linux 2 availabilty zone"
  type        = string
  default     = "us-east-2c"
}

variable "key" {
  description = "variable for amazon linux 2 key"
  type        = string
  default     = "NewKey"
}

variable "name" {
  description = "variable for the name of the amazon linux 2 instance"
  type        = string
  default     = "tfvm1"
}

variable "user1" {
  description = "variable for atlasuser1 user creation"
  type        = string
  default     = "atlasuser1"
}

variable "user2" {
  description = "variable for atlasuser2 user creation"
  type        = string
  default     = "atlasuser2"
}