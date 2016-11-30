module IhealthBot
  module Endpoints
    class Food < Base
      def self.create
        super('Food') do
          5.times do
            find('#txtFoodName').set(2.times.map { [*'a'..'z'].sample }.join)

            if no_results?
              next
            else
              find(:xpath, AUTOCOMPLETE_XPATH).click
              break
            end
          end

          find('#txtEatWeightG').set(rand(1..20))
          find('#eatMeal').set(%w{Breakfast Lunch Dinner Snack}.sample)
        end
      end

      def self.no_results?
        !find(:xpath, AUTOCOMPLETE_XPATH)
      rescue Capybara::ElementNotFound
        true
      end
    end
  end
end
