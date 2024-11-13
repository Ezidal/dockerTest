FROM amd64/openjdk:24-slim
LABEL author=Sergey
EXPOSE 80
WORKDIR /myApp/
RUN apt-get update && apt-get install git -y && apt-get install nginx -y
RUN apt-get install curl -y && apt-get install nano -y
RUN git clone https://github.com/Ezidal/dockerTest.git
WORKDIR /myApp/dockerTest/
RUN javac SimpleHttpServer1.java
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
