FROM golang:1.13-stretch

# Copy project into docker instance
WORKDIR /go/src/app
COPY . .

# Build and install backend
RUN go get -d -v ./...
RUN go install -v ./...

# Expose 80 port
EXPOSE 80

# Set run command
CMD codenames 80
