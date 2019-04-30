# Dockerfile for CS312, Benjamin Brewster, Elijah Voigt
# Simple NodeJS Hello World server
FROM alpine:latest
MAINTAINER Benjamin Brewster <brewsteb@oregonstate.edu>

# Install the NodeJS runtime
RUN apk -U add nodejs

# Copy the server JS file
COPY server.js /srv/server.js

# Expose the port 8080 for HTTP
EXPOSE 8080

# Run this command by default
CMD node /srv/server.js
