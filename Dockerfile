FROM ubuntu
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y p7zip-full wodim genisoimage curl libc6-i386
RUN curl -L https://github.com/Nold360/mksdiso/releases/download/v0.9.2/mksdiso-0.9.2-all.deb -o /tmp/mksdiso-0.9.2-all.deb
RUN dpkg -i /tmp/mksdiso-0.9.2-all.deb
CMD "/bin/bash"
