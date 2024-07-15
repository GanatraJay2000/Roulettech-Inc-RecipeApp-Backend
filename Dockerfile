FROM ubuntu

RUN mkdir /app
WORKDIR /app

RUN apt update && \
    apt upgrade -y
    
RUN apt install git python3 python3-pip -y

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD ./scripts/start.sh 