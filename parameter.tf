resource "aws_ssm_parameter" "default" {
  count = length(var.parameters) > 0 ? length(var.parameters) : 0
  name        = var.parameters[count.index].parameter_name
  description = var.parameters[count.index].parameter_description
  type        = var.parameters[count.index].parameter_type
  value       = var.parameters[count.index].parameter_value

  tags = merge(
    var.global_tags,
    {
      Name = "${var.global_tags.Name}_${var.parameters[count.index].parameter_name} parameter store"
    })
}