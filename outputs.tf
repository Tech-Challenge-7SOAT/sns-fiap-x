output "sns_topic_arn" {
  description = "SNS Topic to error notification"
  value       = aws_sns_topic.fiap_x_topic.arn
}