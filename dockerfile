FROM python:3.11-slim

WORKDIR /home/python/code
COPY requirements.txt download_flatbuffers.py .

RUN pip install -r requirements.txt && \
    python download_flatbuffers.py

COPY . .

LABEL org.opencontainers.image.source https://github.com/energostalin/Blue-Archive---Asset-Downloader

CMD ["/bin/bash"]