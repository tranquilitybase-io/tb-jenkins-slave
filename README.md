# tb-jenkins-slave

# Building and pushing the Jenkins Slave Docker image to a GCR repo

Make changes to the Dockerfile as required and run the following build procedure such that the new image can be pushed into GCR or any other Repo

```
gcloud config set project tranquility-base-images
docker build -t gcr.io/tranquility-base-images/tb-jenkins-slave:latest .
docker push gcr.io/tranquility-base-images/tb-jenkins-slave:latest

```
