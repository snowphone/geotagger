

push: build
	docker push hub.sixtyfive.me/geotagger:latest

build:
	docker buildx build --platform linux/arm64,linux/amd64 -t hub.sixtyfive.me/geotagger .
