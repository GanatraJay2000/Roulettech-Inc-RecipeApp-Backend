# Pull the image from Dockerhub
FROM python:alpine3.19

WORKDIR /
# set up python environment variables

ENV PYTHONDOWNWRITEBYTECODE 1
ENV PYTHONNUNBUFFER 1

# update and  install dependencies
RUN pip install --upgrade pip
COPY . .
# COPY ./requirements.txt /api/requirements.txt
RUN pip install -r requirements.txt

# copy project

# Expose the port server is running on
EXPOSE 8000