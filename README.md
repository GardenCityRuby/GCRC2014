GCRC 2014
===========

## Getting started

This site is built with Jekyll.

    gem install jekyll

    git clone git@github.com:GardenCityRuby/GCRC2014.git
    cd GCRC2014
    cp _config_example.yml _config.yml

Before running jekyll development server update `_config.yml`
and remove `url` section.
And then, run

    jekyll serve -w

Point your browser at `localhost:4000`

## Adding a blog post

    rake post["Post title"]

Edit the new file created in `_posts`

## Adding a page

Edit `_config.yml` and add a link in the `links` section.
Add a markdown(`page.md`) or an html(`page.html`) file in the root directory.
Remember to make the changes to `_config_example.yml` before committing.

## Deploying updates

Commit the changes locally and do:

    git push origin master #This gets deployed to www.gardencityruby.org automatically

(Assuming `origin` to be the remote)

# Deploying to Github Pages

Copy `_config_example.yml` to `_config.yml` and update `url` to
`http://gardencityruby.github.io/GCRC2014`

    jekyll build
    push the contents of _site to gh-pages branch

# Continuous Deployment

The master branch of the site is continuously deployed using a Jenkins build script.
This is what happens behind the scenes :

    cp _config_example.yml _config.yml
    jekyll build --destination _deploy
    push contents of _deploy directory to remote storage
