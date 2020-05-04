FROM golang:1.11-alpine

# Set maintainer label: maintainer=[YOUR-EMAIL]
LABEL maintainer='marc.kurz@fh-hagenberg.at'

# Set working directory: `/opt`
WORKDIR /src

# Copy local file `main.go` to the working directory
COPY main.go go.* ./

# Build the GO app as myapp binary and move it to /usr/
RUN CGO_ENABLED=0 go build -o /usr/myapp

EXPOSE 8888

# Run the service myapp when a container of this image is launched
CMD ["/usr/myapp"]

# execute: docker container run -d -p 9090:8888 mrckurz/first-image:0.0.1
