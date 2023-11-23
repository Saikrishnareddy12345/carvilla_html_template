FROM tomcat
RUN mkdir webapps/sai
COPY . /usr/local/tomcat/webapps/sai

