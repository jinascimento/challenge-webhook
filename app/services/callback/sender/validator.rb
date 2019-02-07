module Callback
  module Sender
    module Validator
      def self.call(sender)
        sender.valid?
      end
    end
  end
end