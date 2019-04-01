FROM ubuntu:16.04

RUN apt-get update -y

Run apt-get upgrade -y

RUN apt-get -qq -y install pkg-config flex bison git python gcc g++ apt-utils -y

RUN git clone https://github.com/alexandre-lefort/ibex-jobs.git

RUN bin/bash -c "cd /ibex-jobs/ibex-lib && \
                 ./waf configure --with-optim --with-optim-MinMax --with-affine && \
                 ./waf install && \
                 cd ../../ "

RUN bin/bash -c "cd /ibex-jobs/problem && make"

