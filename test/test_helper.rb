ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'
require 'rack/test'
require 'capybara'
require 'capybara_minitest_spec'

require_relative '../app'

Capybara.app = App