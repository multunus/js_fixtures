# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "js_fixtures"
  gem.homepage = "http://github.com/multunus/js_fixtures"
  gem.license = "MIT"
  gem.summary = %Q{A gem to create HTML fixtures for JS Tests for Jasmine and JSTestDriver}
  gem.description = %Q{A small utility which creates the HTML fixtures for Jasmine and JSTestDriver tests from the controller specs.}
  gem.email = "leena.sn@multunus.com"
  gem.authors = ["Leena"]
  # dependencies defined in Gemfile
end

