# docker-olap-browser
Docker image for OLAP Browser on Alpine Linux.

### Usage
Update the configuration file ```config.js``` and provide JSON-QB API endpoint URL - ```jsonqbAPIuri```. See more at: https://github.com/LOSD-Data/docker-json-qb-api

Build an image from a Dockerfile:
```docker build -t olap-browser .```

Run Docker container:
```docker run -d -p 8000:8000 olap-browser```

### Requirements
 - Docker 
 - JSON-QB API endpoint