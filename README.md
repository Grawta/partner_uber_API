# README

## Description
This project is an API to access information from a uber_pickups dataset. I found this open-source dataset on :

 <https://www.kaggle.com/fivethirtyeight/uber-pickups-in-new-york-city>
## Developer Setup

### macOS requirements

#### Install Xcode command line tools

    xcode-select --install

#### Install Homebrew

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew doctor

#### Install and start Postgres

    brew install postgresql
    ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
    launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

#### Install rbenv

    brew install rbenv
    rbenv init
    echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile


### Linux requirements

#### Install and start Postgres

    apt-get -y install postgresql postgresql-contrib libpq-dev

#### Install rbenv

    sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    mkdir -p ~/.rbenv/plugins
    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bashrc
    source ~/.bashrc


## Project setup

#### Go to the project directory

    git clone https://github.com/Grawta/partner_uber_API.git 
    cd partner_uber_API

#### Install the required version of Ruby

    rbenv install
    rbenv rehash

#### Install Bundler

    gem install bundler
    rbenv rehash

#### Install required gems

    bundle install
    rbenv rehash

#### Initial setup and start

    rails db:setup
    rails s

#### Browse to <http://localhost:3000>

## Deployment instructions
For this part I decide to host my API on heroku. The deployment instruction are :

#### Create an app on heroku :
	heroku create

#### Deploy your code :
	git push heroku master

#### Launch your app then visit the URL generated to visit your app :
	heroku open

#### Populate PostGreSQL database with db/data.json :
	heroku run rake db:seed
