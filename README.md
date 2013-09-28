GCRC 2014
===========

## Getting started

This site is built with Jekyll.

    gem install jekyll


    git clone git@github.com:GardenCityRuby/GCRC2014.git
    cp _config_example.yml _config.yml
    cd GCRC2014

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
Add a markdown(`page.md`) or an html(`page.html`) file in the root directory

## Pushing the updates

Commit the changes locally and do:

    git push origin jekyll:jekyll

(Assuming `origin` to be the remote)

# Deploying to Github Pages

    jekyll build --config _config_github_pages.yml
    push the contents of _site to gh-pages branch

# Continuous Deployment (WIP)

The master branch of the site is continuously deployed using a Jenkins build script.
This is what happens behind the scenes :

    jekyll build --destination _deploy --config _config_deploy.yml
    push contents of _deploy directory to remote storage
