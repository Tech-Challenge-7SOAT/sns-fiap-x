resource "aws_sns_topic_policy" "allow_publish" {
  arn = aws_sns_topic.sns_fiap_x.arn

  policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = {
          AWS = "*"
        }
        Action    = "sns:Publish"
        Resource  = aws_sns_topic.sns_fiap_x.arn
        Condition = {
          ArnLike = {
            "aws:SourceArn" = "arn:aws:ecs:us-east-1:448628038787:*"
          }
        }
      }
    ]
  })
}