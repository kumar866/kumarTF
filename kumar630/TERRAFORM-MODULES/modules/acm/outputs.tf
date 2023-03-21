# export the acm certificate arn
output "certificate_arn" {
  value = var.domain_name
}

# export the domain name
output "domain_name" {
  value = aws_acm_certificate.acm_certificate.arn
}