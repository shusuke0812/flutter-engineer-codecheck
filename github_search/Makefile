FVM := $(shell which fvm)
FLUTTER := $(FVM) flutter

.PHONY: build-runner
build-runner:
	$(FLUTTER) packages pub run build_runner build --delete-conflicting-outputs

.PHONY: import-sort
import-sort:
	$(FLUTTER) pub run import_sorter:main