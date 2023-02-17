# FROM alpine
# RUN mkdir code; \
#     cd code; \
#     echo "maheepal" > mp.txt; \
#     cd /;
# WORKDIR /code
# RUN touch newfile.txt

#EXAMPLE 2

# FROM openjdk
# RUN mkdir code
# WORKDIR code
# COPY Hello.java .
# RUN javac Hello.java
# #this is different from RUN command. RUN get executed during image created. But CMD every instance creation. May be this example hard to demonistrate. But imagine one is image creation other everytime instance run
# RUN echo "Welome"; \
#      java Hello

#EXAMPLE 3
# FROM openjdk
# RUN mkdir code
# WORKDIR /code
# COPY ["Hello.java","."]
# RUN ["javac","Hello.java"]
# CMD ["java","Hello"]

#EXAMPLE 4
FROM openjdk
RUN mkdir code
WORKDIR /code
COPY ["Hello.java","."]
RUN ["javac","Hello.java"]
ENTRYPOINT ["java","Hello"]