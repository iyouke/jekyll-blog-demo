help:
	@egrep '^\S|^$$' Makefile


install:
	bundle config --local path vendor/bundle
	bundle install

upgrade:
	bundle update


# Serve on subpath, as on Github Pages "Project" site.
s serve:
	bundle exec jekyll serve --livereload

# Serve on root, as on Github Pages "User" site or Netlify.
r serve-root:
	bundle exec jekyll serve --baseurl '' --livereload


build:
	bundle exec jekyll build

build-prod:
	JEKYLL_ENV=production bundle exec jekyll build
