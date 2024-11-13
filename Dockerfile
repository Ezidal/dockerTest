FROM amd64/openjdk:24-slim
LABEL author=Sergey
EXPOSE 80
WORKDIR /myApp/
RUN apt-get update && apt-get install git -y && apt-get install nginx -y
RUN apt-get install curl -y && apt-get install nano -y
RUN git clone https://github.com/Ezidal/dockerTest.git
WORKDIR /etc/nginx/sites-available/
RUN cat /myApp/dockerTest/config > default
WORKDIR /myApp/dockerTest/
RUN chmod +x start.sh
RUN javac SimpleHttpServer1.java
#CMD ["/myApp/dockerTest/start.sh"]
