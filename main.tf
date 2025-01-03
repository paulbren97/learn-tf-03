# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0


provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-01816d07b1128cd2d"
  instance_type = "t2.small"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
