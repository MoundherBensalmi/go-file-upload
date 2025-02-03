# Use a minimal Go image
FROM golang:1.23.5

WORKDIR /app

# Copy source code
COPY . .

# Build the Go application
RUN go mod init fileupload && go mod tidy && go build -o app

# Expose port 8080
EXPOSE 8080

# Run the application
CMD ["./app"]
