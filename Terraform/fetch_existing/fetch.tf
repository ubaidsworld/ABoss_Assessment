provider "aws"{
	region = "ap-south-1"
}

import {
  to = aws_subnet.subnet_C_private
  id = "subnet-09ce6b99ae4b5ae68"
}