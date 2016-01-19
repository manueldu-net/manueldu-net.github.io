
MYBUNDLE="./.mybundle"

deps:
	bundle install --path=$(MYBUNDLE)

build:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve -w
