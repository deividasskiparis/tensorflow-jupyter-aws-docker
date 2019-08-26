# tensorflow-jupyter-aws-docker
Docker container with Python3, Tensorflow and Jupyter for training models on AWS
Stores all notebooks to S3 bucket*

## Steps:
1. Create a S3 bucket on AWS

2. Clone the repo
3. Build docker image
    ```
    docker build -t tensorflow-jupyter-aws-docker .
    ```
4. Credentials
    
    Ensure AWS credentials are available in your shell, if not set them manually:
    ```
    export AWS_ACCESS_KEY_ID=###
    export AWS_SECRET_ACCESS_KEY=###
    export AWS_SESSION_TOKEN=###
    ```
5. Run image
    ```
    docker run -it --rm \
        -p=8888:8888 \
        --name=tensorflow-jupyter-aws-docker \
        -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" \
        -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" \
        -e "AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN" \
        -e "AWS_REGION=$AWS_REGION" \
        -e "AWS_S3_BUCKET=your-s3-bucket-name" \
        tensorflow-jupyter-aws-docker develop
    ```
    NOTE: _AWS_SESSION_TOKEN_  might be optional

6. Open the Jupyter notebook

    From the terminal, copy the notebook url with token in browser
    
    ```
    [I 07:19:30.621 NotebookApp] Writing notebook server cookie secret to /root/.local/share/jupyter/runtime/notebook_cookie_secret
    jupyter_http_over_ws extension initialized. Listening on /http_over_websocket
    [I 07:19:31.551 NotebookApp] Serving contents
    [I 07:19:31.551 NotebookApp] The Jupyter Notebook is running at:
    [I 07:19:31.552 NotebookApp] http://(b4e1cc10327f or 127.0.0.1):8888/?token=a3e4a939f857d0a9ba40daa73dc7a20cbd6219947843f3ca
    [I 07:19:31.552 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
    [C 07:19:31.558 NotebookApp]
    
        To access the notebook, open this file in a browser:
            file:///root/.local/share/jupyter/runtime/nbserver-12-open.html
        Or copy and paste one of these URLs:
            http://(b4e1cc10327f or 127.0.0.1):8888/?token=a3e4a939f857d0a9ba40daa73dc7a20cbd6219947843f3ca
    ```