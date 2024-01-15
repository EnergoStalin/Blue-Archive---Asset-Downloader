FROM python:3.11-slim

WORKDIR /home/python/code
COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

LABEL org.opencontainers.image.source https://github.com/energostalin/Blue-Archive---Asset-Downloader

CMD ["/bin/bash"]