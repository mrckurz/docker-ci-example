# Pull in the layer of the base image: alpine:3.10.3
FROM alpine:3.10.3

# Set maintainer label: maintainer=[YOUR-EMAIL]
LABEL maintainer='marc.kurz@fh-hagenberg.at'

# Set working directory: `/opt`
WORKDIR /opt

# Copy local file `main.go` to the working directory
COPY main.go /opt/main.go

# List items in the working directory (ls)
RUN ls -lha

# Show content of the `main.go` during the build process (cat)
RUN cat /opt/main.go
