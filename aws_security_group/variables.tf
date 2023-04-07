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
  default = ["80", "443"]
}

variable "cidr" {
  default = ["0.0.0.0/0"]
}
