module Events
  module Validator
    def self.call(event)
      event.valid?
    end
  end
end