#!/bin/sh

# publish.sh
# Generates site using Hugo compiler then pushes it to gh-pages branch
# The website pulls from our gh-pages branch to build itself.
# Christopher Choy 2017

cd "$(dirname "$0")"

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. \033[0;31mPlease commit any pending changes.\033[0m"
    exit 1;
fi

# echo "Pulling gh-pages."
git pull

echo "\033[0;34mDeleting old publication.\033[0m"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

# echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public origin/gh-pages

# echo "Cleaning out public/"
rm -rf public/*

echo "\033[0;34mGenerating site.\033[0m"
hugo --gc --minify

# echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)"

echo "\033[0;34mPushing to github.\033[0m"
git push origin gh-pages

echo "\n\nPublish Complete. \033[0;31mUpdate the Custom Domain field in the Repo Settings:\033[0m"
echo "https://github.com/cchoy96/chrischoynet/settings/pages\n"
