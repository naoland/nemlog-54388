version:
	@go versionbuild:
	go build -o ./weblio weblio.go
run:
	go run weblio.go
clean:
	rm ./weblio
build-windows:
	echo "Build for windows10"
	GOOS=windows GOARCH=amd64 go build -o dist/windows/weblio.exe weblio.go
	echo "Done!"
build-linux:
	echo "Build for linux"
	GOOS=linux GOARCH=amd64 go build -o dist/linux/weblio weblio.go
	echo "Done!"
build-mac:
	echo "Build for macOS(Darwin)"
	GOOS=darwin GOARCH=amd64 go build -o dist/macos/weblio-mac weblio.go
	echo "Done!"