FROM python:3.10
ENV WEBEX_TEAMS_ACCESS_TOKEN "inserttokenhere"
RUN pip3 install --upgrade pip
WORKDIR /app
COPY pyreqs.txt /app
RUN pip3 install -r pyreqs.txt
COPY . /app
CMD ["python3", "dadbot.py"]