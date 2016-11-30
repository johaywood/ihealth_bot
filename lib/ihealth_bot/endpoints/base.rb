module IhealthBot
  module Endpoints
    class Base
      extend Capybara::DSL

      MAIN_NAVIGATION_XPATH     = '//*[@id="main_nav"]/section/div/ul[1]'.freeze
      ENDPOINT_NAVIGATION_XPATH = '//*[@id="MenuSecond"]'.freeze
      LEFT_NAVIGATION_XPATH     = '//*[@id="menu_nav_left"]'.freeze
      ERROR_BOX_XPATH           = '//*[@id="ErrorBoxHolder"]'.freeze
      AUTOCOMPLETE_XPATH        = '/html/body/ul/li[@class="ui-menu-item"][1]/a/table/tbody/tr'.freeze

      private

      def self.create(endpoint)
        print "Creating #{endpoint} record..."

        within(:xpath, MAIN_NAVIGATION_XPATH) do
          click_link 'Data'
        end

        within(:xpath, ENDPOINT_NAVIGATION_XPATH) do
          click_link endpoint
        end

        within(:xpath, LEFT_NAVIGATION_XPATH) do
          click_link 'ENTER DATA'
        end

        yield

        click_button 'Submit'

        within(:xpath, ERROR_BOX_XPATH) do
          if current_scope.text.include?('Saved')
            print " ✓ \n"
          else
            print " X \n"
            puts "Error saving data for #{endpoint}"
          end
        end
      end
    end
  end
end
