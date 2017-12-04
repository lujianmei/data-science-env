FROM python:2.7

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p /opt/app-root/data
RUN mkdir -p /opt/app-root/python-projects

COPY . .

CMD [ "python", "./init-script.py" ]

