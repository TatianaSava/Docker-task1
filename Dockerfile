FROM sapmachine:latest
RUN apt-get update 
RUN apt-get install git -y
RUN git clone https://github.com/spring-projects/spring-petclinic.git
WORKDIR /spring-petclinic
RUN ./mvnw package
CMD java -jar target/*.jar
