require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'site_prism'
require_relative 'page_helper.rb'
require_relative 'Helper.rb'

# Declarando os arquivos Helpers
World (PageObjects)
World (Helper)

# Instanciando os arquivos de massas
BUSCA = YAML.load_file('./fixtures/busca.yml')
$URL = YAML.load_file('./fixtures/url.yml')

# Parametrizando as configurações Capybara, Ambiente, Browser & Headless
$ambiente = ENV["url"]
$browser = ENV['browser']
$headless = ENV['headless']

Capybara.register_driver :selenium do |app|
	if $browser.eql?('chrome')
		Capybara::Selenium::Driver.new(app, :browser => :chrome)
	elsif $browser.eql?('firefox')
    	Capybara::Selenium::Driver.new(app, :browser => :firefox)
	end
end

Capybara.configure do |config|
	if $headless.eql?('on')
	   config.default_driver = :selenium_headless
	elsif $headless.eql?('off')
	   config.default_driver = :selenium
	end
	config.app_host = $URL["#{$ambiente}"]
	config.default_max_wait_time = 15
	Capybara.page.driver.browser.manage.window.maximize
end


 

