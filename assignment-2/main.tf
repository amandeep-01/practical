resource "aws_instance" "web" {
  count=length(var.var1)
  ami           = "ami-09de362f44ba0a166"
  instance_type = "t2.micro"

  tags = {
    Name = var.var1[count.index]
    owner="amandeep.singh01@cloudeq.com"
    purpose="training"
  }
}

resource "aws_s3_bucket" "web2" {
  for_each = var.var2
  bucket = each.value

  tags = {
    Name=each.value
    owner="amandeep.singh01@cloudeq.com"
    purpose="training"
  }
}