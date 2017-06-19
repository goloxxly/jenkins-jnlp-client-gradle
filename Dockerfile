FROM goloxxly/jenkins-jnlp-client-java

RUN yum -y update
RUN yum install -y yum-utils
RUN yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
RUN yum makecache fast
RUN yum install -y curl unzip docker-ce
RUN yum -y clean all

# Gradle
RUN curl -o /opt/gradle.zip -L https://services.gradle.org/distributions/gradle-4.0-bin.zip && unzip /opt/gradle.zip -d /opt && rm /opt/gradle.zip

ENV PATH /opt/gradle-4.0/bin:$PATH
