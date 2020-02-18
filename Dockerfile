from jenkins/jenkins:lts-centos

# Distributed Builds plugins
#RUN /usr/local/bin/install-plugins.sh ssh-slaves

# Artifacts
#RUN /usr/local/bin/install-plugins.sh htmlpublisher

# UI
#RUN /usr/local/bin/install-plugins.sh greenballs
#RUN /usr/local/bin/install-plugins.sh simple-theme-plugin

# Scaling
#RUN /usr/local/bin/install-plugins.sh kubernetes

# install Maven
USER root
COPY  apache-maven-3.6.3 /usr/local/maven
RUN echo 'export PATH=$PATH:/usr/local/bin/mvn'  >>/etc/profile
