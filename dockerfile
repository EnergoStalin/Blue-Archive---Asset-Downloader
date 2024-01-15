FROM mosthege/pythonnet:python3.11.2-mono6.12-pythonnet3.0.1

WORKDIR /home/python/code
COPY . .

RUN pip install -r requirements.txt

CMD ["/bin/bash"]