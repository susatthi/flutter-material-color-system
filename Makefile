FVM := $(shell which fvm)
FLUTTER := $(FVM) flutter

.PHONY: get-dependencies
get-dependencies:
	$(FLUTTER) pub get

.PHONY: clean
clean:
	$(FLUTTER) clean

.PHONY: build-runner
build-runner:
	$(FLUTTER) packages pub run build_runner build --delete-conflicting-outputs
