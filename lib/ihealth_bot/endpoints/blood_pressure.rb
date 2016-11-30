module IhealthBot
  module Endpoints
    class BloodPressure < Base
      def self.create
        super('Blood Pressure') do
          find('#txtHighPress').set(rand(100..150))
          find('#txtlowPress').set(rand(50..100))
          find('#txtHeartRate').set(rand(50..90))
          find('#txtRemark').set("Via iHealth Bot v#{VERSION}")
        end
      end
    end
  end
end
