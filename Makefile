
MYBUNDLE="./.mybundle"

all: serve

deps:
	bundle install --path=$(MYBUNDLE)
	pip install html5validator

build: deps
	bundle exec jekyll build

build-nodeps:
	bundle exec jekyll build

serve: build
	bundle exec jekyll serve -w

clean:
	rm -rf _site

validate:
	html5validator --root _site
