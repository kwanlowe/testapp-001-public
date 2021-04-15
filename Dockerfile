FROM golang:latest
# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY testapp-001 .

# RUN go get -d -v ./...
# RUN go install -v ./...
EXPOSE 8080

# Run the executable
CMD ["/go/testapp-001"]
