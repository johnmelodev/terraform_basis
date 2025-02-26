# Especifica a versão mínima do Terraform
terraform {
  required_version = ">= 0.14"
}

# Define o provedor AWS e a região
provider "aws" {
  region = "us-east-1"
}

# Variáveis para personalização
variable "bucket_name" {
  type    = string
  default = "my-static-site-bucket"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami" {
  type    = string
  default = "ami-0c55b159cbfafe1f0" # AMI oficial da Amazon Linux 2 na região us-east-1
}

# Recurso: Bucket S3
resource "aws_s3_bucket" "static_site_bucket" {
  bucket = var.bucket_name
  website {
    index_document = "index.html"
    error_document = "404.html"
  }

  tags = {
    Name        = "Static Site Bucket"
    Environment = "Production"
  }
}

# Recurso: Grupo de Segurança para EC2
resource "aws_security_group" "web" {
  name        = "web-sg"
  description = "Allow web inbound traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "Web Security Group"
    Environment = "Production"
  }
}

# Recurso: Instância EC2
resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  security_groups = [aws_security_group.web.name]

  tags = {
    Name        = "Web Server"
    Environment = "Production"
  }
}

# Saídas para mostrar informações úteis
output "s3_bucket_endpoint" {
  value = aws_s3_bucket.static_site_bucket.website_endpoint
}

output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}
