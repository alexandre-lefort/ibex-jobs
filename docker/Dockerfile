FROM ubuntu:16.04

RUN apt-get update

RUN apt-get -qq -y install pkg-config flex bison git python gcc g++

RUN apt-get -y upgrade

RUN git clone https://github.com/alexandre-lefort/ibex-jobs.git

RUN bin/bash -c "cd /ibex-jobs/ibex-lib && \
                 ./waf configure --with-optim --with-optim-MinMax --with-affine --with-gaol && \
                 ./waf install && \
                 cd ../../ "

RUN bin/bash -c "cd /ibex-jobs/problem && make"

RUN bin/bash -c "cd /ibex-jobs/problem && ./problem"

