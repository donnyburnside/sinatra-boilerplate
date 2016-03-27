ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require 'tilt/erb'
require 'mocha/mini_test'

require File.expand_path '../../app.rb', __FILE__
