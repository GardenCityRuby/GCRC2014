GCRC 2014
===========

## Getting started

This site is built with Jekyll.

    gem install jekyll

The current branch on which development is going on is `jekyll`.

    git clone git@github.com:GardenCityRuby/GCRC2014.git --branch jekyll
    cd GCRC2014

Edit the `_config.yml` file and comment out the following line:

    url:              http://gardencityruby.github.io/GCRC2014

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
