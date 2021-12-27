require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'faker'
require 'cpf_faker'
require 'date'

require_relative 'helper.rb'
require_relative 'page_helper.rb'

AMBIENTE = ENV['AMBIENTE']
#CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")
World(Helper)
World(Pages)


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://www.cheveautopecas.com.br/'
    config.default_max_wait_time = 15
end
