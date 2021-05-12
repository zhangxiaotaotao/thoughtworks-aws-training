FROM tomcat

WORKDIR $CATALINA_HOME

RUN mv ./webapps.dist/* ./webapps

COPY index /usr/local/tomcat/webapps

RUN cp ./webapps/index.jsp ./webapps/ROOT/

RUN apt-get update

RUN apt-get install net-tools

RUN apt-get install iputils-ping

RUN apt install curl -y

EXPOSE 8080