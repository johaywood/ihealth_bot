module IhealthBot
  module Endpoints
    class BloodGlucose < Base
      def self.create
        super('Blood Glucose') do
          find('#txtGlucose').set(rand(50..200))
          find('#selMeal').set(%w{Pre-Breakfast Post-Breakfast Pre-Lunch Post-Lunch Pre-Dinner Post-Dinner Bedtime After Snacks Random}.sample)
          find('#selMedication').set(%w{Pre-Medicine Post-Medicine}.sample)
          find('#txtRemark').set("Via iHealth Bot v#{VERSION}")
        end
      end
    end
  end
end
