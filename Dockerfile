# Base image
FROM royge/python3alpine:latest

# Install requirements
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# Expose port 8080
EXPOSE 8080

COPY app.py .
CMD apistar run --host 0.0.0.0 --port 8080
