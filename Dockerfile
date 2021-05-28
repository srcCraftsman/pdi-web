FROM openjdk:8

RUN apt update && apt install unzip wget ftp -y
RUN wget -c -O pentaho-server.zip https://sourceforge.net/projects/pentaho/files/Pentaho%209.1/server/pentaho-server-ce-9.1.0.0-324.zip/download
# COPY ./pentaho-server-ce-9.1.0.0-324.zip /pentaho-server.zip
RUN unzip /pentaho-server.zip && rm /pentaho-server.zip
RUN java -version 

# RUN apt-get update \
#     && apt-get install -y software-properties-common \
#     && apt-add-repository 'deb http://cz.archive.ubuntu.com/ubuntu bionic main universe' \
#     && apt-get install libwebkitgtk-1.0-0 -y
WORKDIR /pentaho-server/tomcat/bin/

CMD [ "./catalina.sh", "run" ]

