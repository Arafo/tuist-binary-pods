all: project
.PHONY: project

project:
	bundle install
	tuist fetch
	tuist generate --no-open --xcframeworks
	
	bundle exec pod binary fetch
	bundle exec pod install

prebuild:
	bundle exec pod binary prebuild --repo-update

push:
	bundle exec pod binary push
