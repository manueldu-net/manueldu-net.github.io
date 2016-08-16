
MYBUNDLE="./.mybundle"
HTML_MINIFIER="./utils/minify_html.rb"

all: serve

bundle-deps:
	sudo apt install liblzma-dev zlib1g-dev libxml2-dev

deps:
	bundle install --path=$(MYBUNDLE)
	pip install html5validator

build: deps
	bundle exec jekyll build
	$(HTML_MINIFIER)

build-nodeps:
	bundle exec jekyll build
	$(HTML_MINIFIER)

serve: clean build
	bundle exec jekyll serve -w 2>&1 | tee -a jekyll.log

devel:
	bundle exec jekyll serve --drafts -w

clean:
	rm -rf _site .sass-cache

validate:
	html5validator --root _site
