FROM amd64/openjdk:24-slim
LABEL author=Sergey
WORKDIR /myApp/
RUN apt-get update && apt-get install nginx -y && apt-get install git -y
RUN apt-get install curl -y && apt-get install nano -y
COPY SimpleHttpServer1.java .
RUN javac SimpleHttpServer1.java
EXPOSE 80
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
