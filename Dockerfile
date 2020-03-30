FROM ubuntu:18.04

RUN apt-get update &&                  \
    apt-get upgrade -y &&              \
    apt-get install -y                 \
            build-essential cmake      \
            git                        \
            vim                        \
            x11-apps                   \
            qtcreator                &&\
    apt-get clean

RUN git clone https://github.com/sebranchett/testcpp.git
WORKDIR testcpp
RUN cmake -E make_directory ./build
WORKDIR build
RUN cmake ../src -DCMAKE_BUILD_TYPE=Release
RUN cmake --build . --config Release
RUN ctest 

CMD ["/bin/bash"]
