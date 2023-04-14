FROM alpine:latest

RUN apk update && apk add --no-cache \
    chromium \
    chromium-chromedriver \
    xvfb

ENV DISPLAY=:99

WORKDIR /app
COPY test_script.py .

CMD ["python", "test_script.py"]