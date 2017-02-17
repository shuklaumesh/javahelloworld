FROM java:7
ENV FOO bar
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN mkdir test
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

