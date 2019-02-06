MAINTAINER ramudevops123
FROM ramudevops123/jboss
ADD target/my-app.jar /opt/jboss/wildfly/standlone/developments/
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --select
CMD ["/opt/jboss/wildfly/bin/standlone.sh","-b,"0.0.0.0","-bmanagement","0.0.0.0"]
