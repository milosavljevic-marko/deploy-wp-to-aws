resource "aws_instance" "wordpress" {
  ami               = "ami-0943382e114f188e8"
  instance_type     = "t2.micro"
  vpc_security_group_ids = ["$(aws_security_group.ec2-sg.id)"]
  user_data        = "${file("wordpress.sh")}"
  key_name = "linux"
  tags = { 
    Name = "wordpress"
  }
}

resource "aws_security_group" "ec2-sg" {
    name           = "sg-name"
    vpc_id         = "vpc-id"

    ingress {
        from_port = 22
        to_port   = 22
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port   = 80
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "ec2-sg"
    }
}

