FROM golang:1.15

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...
EXPOSE 8080

# Run the executable
CMD ["testapp-001"]
