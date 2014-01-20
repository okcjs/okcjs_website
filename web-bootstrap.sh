#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y python-software-properties build-essential
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get install -y ruby1.9.3 rubygems1.9

sudo gem install bundler

cd /vagrant && sudo bundle install

#cd /vagrant && sudo rake preview