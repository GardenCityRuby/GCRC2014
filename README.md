GCRC 2014
===========

## Getting started

This site is built with Jekyll.

    gem install bundler
    bundle install

    git clone git@github.com:GardenCityRuby/GCRC2014.git
    cd GCRC2014
    jekyll serve -w

Point your browser at `localhost:4000`

## Adding a blog post

    rake post["Post title"]

Edit the new file created in `_posts`

## Adding a page

Edit `_config.yml` and add a link in the `links` section.
Add a markdown(`page.md`) or an html(`page.html`) file in the root directory.

## Deploying updates

Commit the changes locally and do:

    git push origin master #This gets deployed to www.gardencityruby.org automatically

(Assuming `origin` to be the remote)

# Deploying to Github Pages

    git clone git@github.com:GardenCityRuby/GCRC2014.git --branch gh-pages _site

This clones the static site in `gh-pages` branch to `_site` directory.
After changes are made,

    jekyll build --config _config.yml,_config_github.yml
    cd _site
    git add --all && git commit -m "Update site"
    git push --force

# Continuous Deployment

The master branch of the site is continuously deployed using a Jenkins build script.
This is what happens behind the scenes :

    jekyll build --destination _deploy --config _config.yml,_config_deploy.yml
    push contents of _deploy directory to remote storage
