FROM jenkins/jenkins:lts

EXPOSE 8080 50000

ENV JENKINS_SLAVE_AGENT_PORT 50000
ENV TIME_ZONE="America/Fortaleza"

USER root

RUN unlink /etc/localtime
RUN ln -s /usr/share/zoneinfo/America/Fortaleza /etc/localtime

# Install prerequisites for Docker
# libsystemd-journal0
RUN apt-get update && apt-get install -y sudo maven iptables init-system-helpers libapparmor1 libltdl7 libseccomp2 libdevmapper1.02.1 apt-utils gettext-base && rm -rf /var/lib/apt/lists/*

ENV DOCKER_VERSION=17.09.1-ce
# docker-ce_17.03.0~ce-0~ubuntu-trusty_amd64.deb
ENV KUBERNETES_VERSION=v1.6.6

# Set up Docker
RUN curl -SL -o ./docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz \
 && tar xzvf ./docker.tgz \
 && cp ./docker/docker /usr/local/bin \
 && rm -r ./docker \
 && rm ./docker.tgz

# Set up Kubernetes
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$KUBERNETES_VERSION/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl

ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]