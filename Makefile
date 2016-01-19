
MYBUNDLE="./.mybundle"

all: serve

deps:
	bundle install --path=$(MYBUNDLE)

build: deps
	bundle exec jekyll build

build-nodeps:
	bundle exec jekyll build

serve: build
	bundle exec jekyll serve -w

clean:
	rm -rf _site
