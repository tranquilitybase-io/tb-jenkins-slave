FROM jenkins/inbound-agent:latest

LABEL name=jenkins-slave

USER root

# Installs Docker Engine  
RUN sudo apt-get -o Acquire::ForceIPv4=true update \
&& sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common \
&& curl -4fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - \ 
&& sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
&& sudo apt-get -o Acquire::ForceIPv4=true update \
&& sudo apt-get install -y docker-ce-cli  && \
\
groupadd -g 999 docker && \
usermod -aG docker jenkins && \
\
apt-get clean && \
rm -rf /var/lib/apt/lists/*

USER jenkins
