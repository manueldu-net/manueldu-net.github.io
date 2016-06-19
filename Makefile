
MYBUNDLE="./.mybundle"
HTML_MINIFIER="./utils/minify_html.rb"

all: serve

deps:
	bundle install --path=$(MYBUNDLE)
	pip install html5validator

build: deps
	bundle exec jekyll build
	$(HTML_MINIFIER)

build-nodeps:
	bundle exec jekyll build
	$(HTML_MINIFIER)

serve: build
	bundle exec jekyll serve -w 1>jekyll.log 2>&1

devel:
	bundle exec jekyll serve --drafts -w

clean:
	rm -rf _site

validate:
	html5validator --root _site
