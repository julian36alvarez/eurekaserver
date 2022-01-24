# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
FROM openjdk:11
VOLUME /tmp
EXPOSE 8761
ADD jar.jar eureka.jar
ENTRYPOINT [ "java","-jar","/eureka.jar" ]