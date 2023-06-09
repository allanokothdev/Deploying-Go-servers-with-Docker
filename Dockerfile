# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go
FROM golang

# Copy the local package files to the latest version of Go installed
ADD .  /go/src/golang.org/x/example.outyet

#   Build the outyet command inside the container.
#   (You may fetch or manage dependencies here,
#   either manually or with a tool like "godep".)
RUN go install golang.org/x/example/outyet@latest

#   Run the outyet command by default when the container starts
ENTRYPOINT /go/bin/outyet

#   Document that the service listen on port 8080
EXPOSE 8080