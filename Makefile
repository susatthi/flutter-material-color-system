FVM := $(shell which fvm)
FLUTTER := $(FVM) flutter

.PHONY: pub-get
pub-get:
	$(FLUTTER) pub get

.PHONY: pub-upgrade
pub-upgrade:
	$(FLUTTER) pub upgrade

.PHONY: clean
clean:
	$(FLUTTER) clean
	rm -rf ios/Pods ios/Podfile.lock

.PHONY: build-runner-build
build-runner-build:
	$(FLUTTER) packages pub run build_runner build --delete-conflicting-outputs

.PHONY: build-runner-watch
build-runner-watch:
	$(FLUTTER) packages pub run build_runner clean
	$(FLUTTER) packages pub run build_runner watch --delete-conflicting-outputs

.PHONY: flutter-launcher-icons
flutter-launcher-icons:
	$(FLUTTER) pub run flutter_launcher_icons:main
