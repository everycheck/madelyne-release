#!/usr/bin/env bash
.PHONY: help build

default: help

sum:
	shasum -a 256 madelyne-* > checksum.txt

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
