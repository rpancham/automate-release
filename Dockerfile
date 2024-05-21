# Use the official Golang image as the build stage
FROM golang:1.18-alpine AS build

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy go.mod and go.sum files
COPY go.mod go.sum ./

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download

# Copy the source from the current directory to the Working Directory inside the container
COPY . .

# Build the Go app
RUN go build -o hello-world .

# Start a new stage from scratch
FROM alpine:latest

# Copy the Pre-built binary file from the previous stage
COPY --from=build /app/hello-world /hello-world

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["/hello-world"]