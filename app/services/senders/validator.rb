module Senders
  module Validator
    def self.call(sender)
      sender.valid?
    end
  end
end