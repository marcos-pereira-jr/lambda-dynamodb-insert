data "archive_file" "input_db" {
  output_path = "files/input-db.zip"
  type        = "zip"
  source_file = "${local.lambdas_path}/input-db/index.js"
}

resource "aws_lambda_function" "input_db" {

  function_name = "input-db"
  handler       = "index.handler"
  description   = "Gets a random cat image"
  role          = aws_iam_role.iam_input_db.arn
  runtime       = "nodejs14.x"
  
  filename         = data.archive_file.input_db.output_path
  source_code_hash = data.archive_file.input_db.output_base64sha256

  timeout     = 5
  memory_size = 128

  tracing_config {
    mode = "Active"
  }

  environment {
    variables = {
      TABLE = aws_ssm_parameter.dynamodb_table.name
    }
  }
}