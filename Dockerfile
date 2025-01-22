ARG BUILD_FROM=nextdns/nextdns/amd64:latest
# Define the base image for Home Assistant Add-ons
FROM ${BUILD_FROM}

# Install necessary packages (NextDNS is already included in the base image)
# No additional installations required for this simple add-on

# Copy the run.sh script to the container
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Expose necessary ports for NextDNS (default is 53 for DNS)
EXPOSE 53/tcp
EXPOSE 53/udp

# Set the default command to execute the script
CMD [ "/run.sh" ]
