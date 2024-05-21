# Build the manager binary
FROM golang:1.21 as builder

# Copy in the go src
# WORKDIR /go/src/github.com/kserve/kserve
COPY . .


# Build
RUN CGO_ENABLED=0 GOOS=linux GOFLAGS=-mod=mod go build -a -o main ./main.go

# Copy the controller-manager into a thin image
FROM gcr.io/distroless/static:nonroot
# COPY third_party/ /third_party/
COPY --from=builder /main 
ENTRYPOINT ["/main"]