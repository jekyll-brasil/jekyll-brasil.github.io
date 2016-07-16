#!/usr/bin/env bash
set -e # halt script on error

echo 'Testing travis...'
bundle exec travis-lint

echo 'Jekyll build...'
bundle exec jekyll build

# echo 'Testing htmlproof...'
# bundle exec htmlproof ./_site --href-ignore "#","#!","{( post.url )}" --disable-external

cd ${HTML_FOLDER}

# config
git config --global user.email "jekyllbrasil@gmail.com"
git config --global user.name "Travis CI"

# deploy
git init
git add -A .
git commit -m "Deploy to GitHub Pages"
git push --force --quiet "https://${GH_TOKEN}@github.com/${GH_REF}" master