module Callback
  module Organization
    module Validator
      def self.call(organization)
        organization.valid?
      end
    end
  end
end