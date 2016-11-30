$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'ihealth_bot/version'

Gem::Specification.new do |gem|
  gem.name        = 'ihealth_bot'
  gem.version     = IhealthBot::VERSION
  gem.date        = '2016-11-29'

  gem.authors     = ["Josh Haywood"]
  gem.email       = 'josh.haywood@gmail.com'
  gem.homepage    = 'https://github.com/johaywood/ihealth_bot'
  gem.summary     = "Create iHealth data"
  gem.description = "Automagically create iHealth data via the user portal. Useful for testing."
  gem.license     = 'MIT'

  gem.files       = `git ls-files -z`.split("\x0")
  gem.executables = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }

  gem.required_ruby_version = '~> 2.3'

  gem.add_dependency 'capybara', '2.10.1'
  gem.add_dependency 'capybara-webkit', '1.1.0'
  gem.add_dependency 'thor', '0.19.4'
end
