# Use a minimal Go image
FROM golang:1.23.5

WORKDIR /app

# Copy source code
COPY . .

# Install dependencies (go mod tidy) and build the Go application
RUN go mod tidy && go build -o app

# Expose port 8080
EXPOSE 8080

# Run the application
CMD ["./app"]
