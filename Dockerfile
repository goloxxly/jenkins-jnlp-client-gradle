FROM goloxxly/jenkins-jnlp-client-java

RUN yum -y update;\
yum install -y curl;\
yum install -y unzip;\
yum -y clean all;

# Gradle
RUN curl -o /opt/gradle.zip -L https://services.gradle.org/distributions/gradle-3.5-bin.zip && unzip /opt/gradle.zip -d /opt && rm /opt/gradle.zip

ENV PATH /opt/gradle-3.5/bin:$PATH
