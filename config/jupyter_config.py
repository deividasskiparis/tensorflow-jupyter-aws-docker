from s3contents import S3ContentsManager
import os

aws_access_key_id = 'AWS_ACCESS_KEY_ID'
aws_secret_access_key = 'AWS_SECRET_ACCESS_KEY'
aws_s3_bucket = 'AWS_S3_BUCKET'

required_vars = [aws_access_key_id, aws_access_key_id, aws_s3_bucket]
if all(elem in required_vars for elem in os.environ):
    c = get_config()

    c.NotebookApp.contents_manager_class = S3ContentsManager
    c.S3ContentsManager.access_key_id = os.environ.get(aws_access_key_id)
    c.S3ContentsManager.secret_access_key = os.environ.get(aws_secret_access_key)
    c.S3ContentsManager.session_token = os.environ.get('AWS_SESSION_TOKEN')
    c.S3ContentsManager.bucket = os.environ.get(aws_s3_bucket)
    c.S3ContentsManager.prefix = os.getenv('AWS_S3_PREFIX', "tensorflow-jupyter-aws-docker/notebooks")
