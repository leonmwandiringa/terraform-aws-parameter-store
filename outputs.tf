output "name" {
  value = aws_ssm_parameter.default.*.name
  description = "ssm parameter name"
}

output "arn" {
  value = aws_ssm_parameter.default.*.arn
  description = "ssm parameter arn"
}