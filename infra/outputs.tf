output "bucket_name"   { value = aws_s3_bucket.lake.bucket }
output "glue_database" { value = aws_glue_catalog_database.lakehouse.name }
output "glue_role_arn" { value = aws_iam_role.glue_job.arn }
