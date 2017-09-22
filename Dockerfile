FROM python:3.6
ENV RUNTIME_PACKAGES="python3"
ENV BUILD_PACKAGES="build-essential python3-dev python3-pip libpq-dev"
WORKDIR /coherent
ADD . /coherent
EXPOSE 5050
RUN apt-get update && apt-get install -y $RUNTIME_PACKAGES $BUILD_PACKAGES
RUN pip3 install -r requirements.txt
CMD ["python", "run.py"]