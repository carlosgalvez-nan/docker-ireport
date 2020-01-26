FROM fedora:20

ARG var
ENV IREPORT_RELEASE_NAME=${var}

RUN yum -y update && \
yum -y install java-1.7.0-openjdk-devel && \
yum -y install unzip

COPY ${var}.zip /home/developer/

RUN unzip /home/developer/${IREPORT_RELEASE_NAME}.zip -d /home/developer

# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer
CMD /home/developer/${IREPORT_RELEASE_NAME}/bin/ireport

