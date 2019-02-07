module Callback
  module Sender
    module Build
      def self.call(event, body)
        event.sender_attributes = ::Sender.new(body: body).attributes
        event
      end
    end
  end
end