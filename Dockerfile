FROM tensorflow/tensorflow:latest-gpu

RUN mkdir /workspace

WORKDIR /workspace
COPY . /workspace

RUN apt-get update
RUN apt-get install -y libgl1-mesa-dev
RUN pip3 install flask pillow keras numpy

COPY . .

EXPOSE 80
ENTRYPOINT ["python"]
CMD ["server.py"]
