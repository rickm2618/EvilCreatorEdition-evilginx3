TARGET=evilginx
PACKAGES=core database log parser

.PHONY: all build clean
all: build

build:
	@go build -o ./build/$(TARGET) -mod=mod main.go

clean:
	@go clean
	@rm -f ./build/$(TARGET)
