require 'rubygems'
gemfile = File.expand_path('../../../../Gemfile', __FILE__)

if File.exist?(gemfile)
  ENV['BUNDLE_GEMFILE'] = gemfile
  require 'bundler'
  require 'bundler/setup'
  require 'rails/all'
  require 'delayed_job'
end

$:.unshift File.expand_path('../../../../lib', __FILE__)