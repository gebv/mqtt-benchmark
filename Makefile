GO ?= go
GOBUILD = $(GO) build $(GOFLAGS) -v

build:
	GOARCH=amd64 GOOS=linux $(GOBUILD) -o "./bin/mqtt-bench-linux-amd64.bin" ./main.go ./client.go
	GOARCH=amd64 GOOS=darwin $(GOBUILD) -o "./bin/mqtt-bench-darwin-amd64.bin" ./main.go ./client.go
