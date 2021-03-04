FROM gcc:9.3.0

RUN apt-get update && apt-get install -y \
  cmake \
  libboost-dev \
  libfreeimage-dev \
  libpoppler-cpp-dev \
  libtesseract-dev \
  ninja-build \
  python3-dev

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py && pip install conan && \
    conan remote add lrde-public https://artifactory.lrde.epita.fr/artifactory/api/conan/lrde-public

COPY resources/code /code
COPY build.sh /code/build.sh
WORKDIR /code

CMD sh build.sh
