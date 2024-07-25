PLATFORM := linux/amd64,linux/arm64

build-cuda10.2-cudnn7-ubuntu2004-runtime:
	docker buildx build --push --platform=linux/amd64	\
		--file=opencv.Dockerfile \
		--tag=ghcr.io/khlipeng/nvidia-cuda:cuda10.2-cudnn7-ubuntu2004-runtime-amd64	\
		.

build-cuda10.2-cudnn7-ubuntu2004-dev:
	docker buildx build --push --platform=linux/arm64	\
		--file=opencv.Dockerfile \
		--tag=ghcr.io/khlipeng/nvidia-cuda:cuda10.2-cudnn7-ubuntu2004-dev-arm64	\
		.

