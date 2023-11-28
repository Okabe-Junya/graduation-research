DEFAULT_GOAL := build


.PHONY: docker-build
docker-build:
	@echo "Building docker image..."
	@docker build -t tex-ja:latest .

.PHONY: build
build: docker-build
	@echo "Building..."
	@docker run --rm -v $$PWD:/workdir tex-ja:latest latexmk

.PHONY: clean
clean:
	@echo "Cleaning..."
	@rm -rf ./build
	@mkdir ./build && touch ./build/.gitkeep
