module Senders
  module Build
    def self.call(params)
      body = params.try([:sender]).try(:to_json)
      Sender.new(body: body)
    end
  end
end