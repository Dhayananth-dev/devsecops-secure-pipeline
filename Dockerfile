FROM python:3.11-slim
WORKDIR /app
COPY app/ .
RUN pip install -r requirements.txt

# ADD THIS LINE - upgrades wheel to safe version!
RUN pip install --upgrade wheel