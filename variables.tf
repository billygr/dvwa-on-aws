variable "aws_access_key" {
  default = ""
}
variable "aws_secret_key" {
  default = ""
}
variable "aws_region" {
  default = "eu-west-1"
}
variable "ssh_key_path" {
  default = "C:/Users/...."
}
variable "instance_type" {
  default = "t3.micro"
}
variable "ssh_key_name" {
  default = "terraform-key"
}
variable "ip_whitelist" {
  default = ["1.2.3.4/32"]
}
