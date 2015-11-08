all: help
	@echo "running make help"

build: lint
	@echo "Building to pkg/gauntlt-server..."
	@rice embed-go
	@godep go build -o pkg/gauntlt-server ./gauntlt-server.go

test:
	@echo "no tests yet"

start:
	@echo "Starting"
	./pkg/gauntlt-server

lint:
	@echo "Linting with golint..."
	@golint ./...
	@echo "Static Analysis using go vet..."
	@godep go vet ./... | grep -v Godeps |tee /tmp/gauntlt-server-govet.txt
	@test ! -s /tmp/gauntlt-server-govet.txt
	@echo "Code formatting with gofmt..."
	@gofmt -l -s . | grep -v Godeps |tee /tmp/gauntl-server-gofmt.txt
	@test ! -s /tmp/gauntl-server-gofmt.txt

help:
	@echo "try these:"
	@echo "  make build"
	@echo "  make lint"
	@echo "  make test"
	@echo "  make start"


.phony: build
