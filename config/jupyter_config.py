from s3contents import S3ContentsManager
import os

c = get_config()

c.NotebookApp.contents_manager_class = S3ContentsManager
c.S3ContentsManager.access_key_id = os.environ.get('AWS_ACCESS_KEY_ID')
c.S3ContentsManager.secret_access_key = os.environ.get('AWS_SECRET_ACCESS_KEY')
c.S3ContentsManager.session_token = os.environ.get('AWS_SESSION_TOKEN')
c.S3ContentsManager.bucket = os.environ.get('AWS_S3_BUCKET')
c.S3ContentsManager.prefix = os.getenv('AWS_S3_PREFIX', "tensorflow-jupyter-aws-docker/notebooks")