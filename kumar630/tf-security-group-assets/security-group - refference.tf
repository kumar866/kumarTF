# Create Security Group for the Application Load Balancer
# terraform aws create security group
resource "aws_security_group" "alb-security-group" {
  name        = 
  description = 
  vpc_id      = 

  ingress {
    description      = 
    from_port        = 
    to_port          = 
    protocol         = 
    cidr_blocks      = 
  }

  ingress {
    description      = 
    from_port        = 
    to_port          =
    protocol         = 
    cidr_blocks      = 
  }

  egress {
    from_port        = 
    to_port          = 
    protocol         = 
    cidr_blocks      = 
  }

  tags   = {
    Name =
  }
}

# Create Security Group for the Bastion Host aka Jump Box
# terraform aws create security group
resource "aws_security_group" "ssh-security-group" {
  name        = 
  description = 
  vpc_id      = 

  ingress {
    description      = 
    from_port        = 
    to_port          = 
    protocol         = 
    cidr_blocks      = 
  }

  egress {
    from_port        = 
    to_port          = 
    protocol         = 
    cidr_blocks      = 
  }

  tags   = {
    Name = 
  }
}

# Create Security Group for the Web Server
# terraform aws create security group
resource "aws_security_group" "webserver-security-group" {
  name        = 
  description = 
  vpc_id      =

  ingress {
    description      = 
    from_port        = 
    to_port          =
    protocol         = 
    security_groups  =
  }

  ingress {
    description      = 
    from_port        = 
    to_port          = 
    protocol         =
    security_groups  =
  }

  ingress {
    description      =
    from_port        =
    to_port          =
    protocol         =
    security_groups  =
  }

  egress {
    from_port        = 
    to_port          = 
    protocol         = 
    cidr_blocks      =
  }

  tags   = {
    Name =
  }
}

# Create Security Group for the Database
# terraform aws create security group
resource "aws_security_group" "database-security-group" {
  name        = 
  description = 
  vpc_id      =

  ingress {
    description      = 
    from_port        = 
    to_port          = 
    protocol         = 
    security_groups  =
  }

  egress {
    from_port        = 
    to_port          = 
    protocol         = 
    cidr_blocks      = 
  }

  tags   = {
    Name =
  }
}