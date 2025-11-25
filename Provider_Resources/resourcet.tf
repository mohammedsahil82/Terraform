resource "aws_instance" "example" {
   
   instance_type = "t3.micro"
   ami = "ami-0fa3fe0fa7920f68e"
    key_name = "kubernetes"
   vpc_security_group_ids = [ "sg-0c532b3818fa042a4" ]

}