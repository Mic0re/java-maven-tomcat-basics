FROM maven AS build
WORKDIR /app
COPY . .
RUN mvn package

FROM tomcat
WORKDIR /usr/local/tomcat/webapps
COPY --from=build /app/target/app.war .
RUN mv app.war ROOT.war
RUN rm -rf ROOT
CMD ["catalina.sh", "run"]