resource "aws_sqs_queue_policy" "fiap_x_queue_policy" {
  queue_url = aws_sqs_queue.fiap_x_queue.id

  policy = jsonencode({
    Version   = "2012-10-17",
    Statement = [
      {
        Effect    = "Allow",
        Principal = "*",
        Action    = "sqs:SendMessage",
        Resource  = aws_sqs_queue.fiap_x_queue.arn
      }
    ]
  })
}