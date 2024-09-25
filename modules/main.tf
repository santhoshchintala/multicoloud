module "s3" {
  source = "./S3"
  bucket_name = var.bucket_name
  depends_on = [ module.vpc ]
  

}
module "vpc" {
    source = "./VPC"
    cidr = var.cidr
    vpc_name = var.vpc_name

  
}