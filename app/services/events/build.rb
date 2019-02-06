module Events
  module Build
    def self.call(params)
      event = params[:event]
      body = params[:body][event.to_sym]
      Event.new(event: event, body: body.to_json)
    end
  end
end