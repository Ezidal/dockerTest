FROM amd64/openjdk:24-slim
LABEL author=Sergey
EXPOSE 80
WORKDIR /myApp/
RUN apt-get update && apt-get install git -y && apt-get install nginx -y
RUN apt-get install curl -y && apt-get install nano -y
RUN git clone https://github.com/Ezidal/dockerTest.git
#WORKDIR /etc/nginx/sites-enable/
RUN cat config > /etc/nginx/sites-enable/default
WORKDIR /myApp/dockerTest/
RUN javac SimpleHttpServer1.java
RUN nginx
CMD ["java SimpleHttpServer1;"]
