FROM python:3
MAINTAINER "Derilinx Ltd"

# Update & Dependencies
#RUN apk add --update python py-pip git

# Clone CubeVisualizer files into the docker container
RUN git clone https://github.com/LOSD-Data/qb-olap-browser.git -b cso /var/www/OLAP-Browser
RUN cd /var/www/OLAP-Browser && git checkout cso && git pull

# Copy config file
COPY config.js /var/www/OLAP-Browser/resources/config.js

# Configure port
EXPOSE  8000

# Run python SimpleHTTPServer
CMD cd /var/www/OLAP-Browser/ && python -m http.server 8000
