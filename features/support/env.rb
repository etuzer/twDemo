#encoding: UTF-8

require 'cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'nokogiri'
require 'capybara'

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.default_selector = :css
Capybara.default_max_wait_time = 10
Capybara.ignore_hidden_elements = false
Capybara.exact=true
World(Capybara::DSL)