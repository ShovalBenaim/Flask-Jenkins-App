# Flask-Jenkins-App
for a Jenkins exercise
# Note - you need to run this command on the remote server before the build to enable authenticaiton:
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 334604350470.dkr.ecr.us-east-1.amazonaws.com
# Also - delete the old container before running the pipeline
