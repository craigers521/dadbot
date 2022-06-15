FROM python:3.10
ENV WEBEX_TEAMS_ACCESS_TOKEN "MDI2ZjM5OGYtOTlkMS00OGVkLTg2MjktY2E1ZjY1ZWRhMTVhN2NiODA1OWYtMWM1_PF84_1eb65fdf-9643-417f-9974-ad72cae0e10f"
RUN pip3 install --upgrade pip
WORKDIR /app
COPY pyreqs.txt /app
RUN pip3 install -r pyreqs.txt
COPY . /app
CMD ["python3", "dadbot.py"]