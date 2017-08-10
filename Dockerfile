FROM fabric8/jenkins-jnlp-client

# Running all yum related command in one RUN to minimalise the size of the produced Docker image
RUN yum install -y yum-utils \
    && yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo \
    && yum install -y curl unzip docker-ce \
    && yum -y clean all

# Gradle
RUN curl -o /opt/gradle.zip -L https://services.gradle.org/distributions/gradle-4.0-bin.zip && unzip /opt/gradle.zip -d /opt && rm /opt/gradle.zip

ENV PATH /opt/gradle-4.0/bin:$PATH
