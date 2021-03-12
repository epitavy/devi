FROM python:3.7-slim

RUN apt-get update -y && apt-get install -y \
    tesseract-ocr-fra \
    libfreeimage3 \
    enchant \
    libpoppler-cpp0v5 \
    aspell-fr \
    libtesseract4

COPY ./code/back /app/back
COPY ./code/resources /app/resources
COPY ./code/server /app/server
COPY ./code/build/soduco-py37-0.1.1-Linux.tar.gz /app/

WORKDIR /app
RUN ls
RUN tar xf soduco-py37-0.1.1-Linux.tar.gz && \
    mv soduco-py37-0.1.1-Linux/lib . && mv resources/libstdc++.so lib/libstdc++.so.6

ENV LD_LIBRARY_PATH=/app/lib

COPY ./step2/requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
