require_relative 'ihealth_bot/endpoints.rb'
require_relative 'ihealth_bot/version.rb'
require_relative 'ihealth_bot/config.rb'

module IhealthBot
  extend Capybara::DSL

  def self.create_data
    login
    Endpoints::Activities.create
    Endpoints::BloodGlucose.create
    Endpoints::BloodPressure.create
    Endpoints::Food.create
    Endpoints::Weight.create
    puts "Done! \n"
  end

  def self.login
    visit('/')
    print 'Logging in...'
    fill_in 'Email', with: Config.email
    fill_in 'Password', with: Config.password
    click_button 'Login'
    print " ✓ \n"
  end
end
