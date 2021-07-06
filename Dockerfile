FROM python:3.9.1

RUN mkdir /myportfolio
COPY requirements.txt /myportfolio
WORKDIR /myportfolio
RUN pip3 install -r requirements.txt

COPY . /capuchinportfolio

RUN chmod u+x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]