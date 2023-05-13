output "lambdas" {
  value = [{
    arn           = aws_lambda_function.input_db.arn
    name          = aws_lambda_function.input_db.function_name
    description   = aws_lambda_function.input_db.description
    version       = aws_lambda_function.input_db.version
    last_modified = aws_lambda_function.input_db.last_modified
  }]
}
