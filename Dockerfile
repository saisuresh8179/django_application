FROM ubuntu
WORKDIR /app
COPY requriments.txt /app
COPY sample /app
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requriments.txt && \
    cd sample
ENTRYPOINT ["python3"]
CMD ["manage.py","runserver","0.0.0.0:8000"]

