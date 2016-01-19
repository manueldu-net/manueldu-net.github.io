
MYBUNDLE="./.mybundle"

all: serve

deps:
	bundle install --path=$(MYBUNDLE)

build: deps
	bundle exec jekyll build

serve: build
	bundle exec jekyll serve

clean:
	rm -rf _site
