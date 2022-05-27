FROM python:3.10-slim

ENV TZ=Asia/Seoul

RUN apt-get update && apt-get install -y libimage-exiftool-perl git && apt-get clean
RUN pip install ijson Shapely python-dateutil

ADD https://raw.githubusercontent.com/Scarygami/location-history-json-converter/master/location_history_json_converter.py .
RUN chmod 777 location_history_json_converter.py
COPY ./entrypoint.sh .
RUN chmod 777 entrypoint.sh


RUN useradd -u 1000 docker-user
USER docker-user


ENTRYPOINT [ "./entrypoint.sh" ]




