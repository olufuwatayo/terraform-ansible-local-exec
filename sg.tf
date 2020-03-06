resource "aws_security_group" "allow_from_my_ip" {
  name        = "allow_from_my_ip"
  description = "Allow all inbound traffic from my ip "
  #vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["18.207.153.129/32"]  #add your IP address here to get your IP address type curl ifconfig.co in your terminal 
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"] #we want to open the outgoing connections to the world 
  }
}