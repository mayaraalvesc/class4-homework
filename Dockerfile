FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install python3

COPY my_csv_reader.py .

COPY wine.data .

CMD ["python3","-u","my_csv_reader.py"]
