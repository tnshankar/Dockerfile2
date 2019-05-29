FROM ubuntu:latest
 RUN apt update
RUN apt install -y  sudo
RUN apt install -y vim
RUN mkdir custom
RUN chmod +x custom
RUN cd custom
RUN touch tt.txt 
COPY test.sh /
RUN chmod +x /test.sh
RUN . /test.sh
CMD . /test.sh
