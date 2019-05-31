#!bash

# Set up Rails app. Run this script immediately after cloning

# Exit if any subcommand fails
set -e 

# Set up Ruby dependencies via Bundler
echo "bundler setup"
gem install bundler --conservative
bundle check || bundle install

# Set up database
rake db:setup db:test:prepare

# Only if this isn't CI
if [ -z "$CI" ]; then
    # Set up development seed data
    rake dev.rake

    # add remotes
    git remote add https://github.com/ETrimbs/Trimb-Health.git

fi