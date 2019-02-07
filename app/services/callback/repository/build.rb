module Callback
  module Repository
    module Build
      def self.call(event, body)
        event.repository_attributes = ::Repository.new(body: body).attributes
        event
      end
    end
  end
end