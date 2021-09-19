resource "aws_default_vpc" "default" {}

resource "aws_security_group" "allow_connections_to_from_dvwa" {
  name        = "allow_connections_to_from_dvwa"
  description = "Allow TLS inbound traffic for ssh but only for host PCs external IP. Created with terraform for the hacking lab"
  vpc_id      = aws_default_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = concat(var.ip_whitelist,
                        formatlist("%s/32", chomp(data.http.external_ip.body))
                        )
  }
  /* DVWA */
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = concat(var.ip_whitelist,
                        formatlist("%s/32", chomp(data.http.external_ip.body))
                        )
  }
  tags = {
    Name = "allow_connections_to_from_dvwa"
  }
  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
