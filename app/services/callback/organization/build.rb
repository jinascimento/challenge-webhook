module Callback
  module Organization
    module Build
      def self.call(event, body)
        event.organization_attributes = ::Organization.new(body: body).attributes
        event
      end
    end
  end
end