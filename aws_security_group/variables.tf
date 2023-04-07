variable "name" {
  default = "default-test-sg"
}

variable "env" {
  default = "test"
}

variable "vpc_id" {
  description = "vpc_id"
}

variable "allow_ports" {
  //  type     = list
  default = ["80", "443"]
}
