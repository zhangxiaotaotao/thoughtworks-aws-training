FROM tomcat

WORKDIR $CATALINA_HOME

RUN mv ./webapps.dist/* ./webapps

COPY ./index /usr/local/tomcat/webapps

RUN cp ./webapps/index.jsp ./webapps/ROOT/

EXPOSE 8080