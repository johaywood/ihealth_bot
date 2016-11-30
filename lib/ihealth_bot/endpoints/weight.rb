module IhealthBot
  module Endpoints
    class Weight < Base
      def self.create
        super('Weight') do
          find('#txtWeight').set(rand(220..240))
          find('#txtFatValue').set(rand(10..15))
          find('#txtBoneValue').set(rand(1..10))
          find('#txtWaterValue').set(rand(20..85))
          find('#txtMuscaleValue').set(rand(10..100))
          find('#txtVFR').set(rand(10..15))
          find('#txtRemark').set("Via iHealth Bot v#{VERSION}")
        end
      end
    end
  end
end
