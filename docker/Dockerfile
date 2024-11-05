FROM python:3.11.4-slim AS test

# Install dependencies
COPY requirements.txt /tmp/requirements.txt
RUN /usr/local/bin/pip3 --no-cache-dir install -r /tmp/requirements.txt

CMD [ "executable" ]