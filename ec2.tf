resource "aws_instance" "vm1" {
  ami               = var.ami_id
  instance_type     = var.itype
  availability_zone = var.az
  key_name          = var.key
  vpc_security_group_ids = [
    "sg-0540a20c12323a1e6",
    "sg-0e7a21a744729fc5d",
    aws_security_group.tfsg1.id
  ]
  depends_on = [aws_security_group.tfsg1]

  tags = {
    Name = var.name
    iac  = "terraform"
  }
}

resource "aws_ec2_instance_state" "vm1state" {
  instance_id = aws_instance.vm1.id
  state       = "stopped"
}

resource "aws_security_group" "tfsg1" {
  name        = "https"
  description = "allow https"
  vpc_id      = "vpc-0249764d806de3979"

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow inbound https"
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow all outbound https"
  }
}

