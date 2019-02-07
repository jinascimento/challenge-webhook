module Callback
  module Event
    module Validator
      def self.call(event)
        event.valid?
      end
    end
  end
end