# Get Image from go. (To check if is Win or no)
FROM golang:latest

# Working directory. I think that In my other dockerfile I don't have this and I use volumes
WORKDIR /go/src/app

# Copy the files needed for the dependecies (Go environment will need the dependecies to run the compiled app)
COPY . .

# Download dependencies
RUN go mod download

RUN go build

EXPOSE 8000

CMD ["./GoTest"]
