SHELL := /bin/bash
JS_DIR = assets/js/

all : serve

clean:
	rm -rf .sass-cache/
	rm -rf _site/
	rm -rf $(JS_DIR)
	rm -rf node_modules/

install:
	npm install
	bundle install

include-vendor-js: install
	mkdir -p $(JS_DIR)
	cp node_modules/jquery/dist/jquery.min.js $(JS_DIR)
	cp node_modules/popper.js/dist/umd/popper.min.js $(JS_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js $(JS_DIR)

build: include-vendor-js
	bundle exec jekyll build

serve: include-vendor-js
	JEKYLL_ENV=production bundle exec jekyll serve
