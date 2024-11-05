###############################################
############ VSCode DEV Environment ###########
###############################################

# Using a prebuild image with Everysk Development features.
FROM ghcr.io/everysk/devcontainers-base:v1 AS container_template

# Install dependencies
COPY requirements.txt /tmp/requirements.txt
RUN /usr/local/bin/pip3 --no-cache-dir install -r /tmp/requirements.txt

# Allow running as non-root in local mode.
RUN chmod -R a+rwx /usr/local/lib/python3.11/site-packages
