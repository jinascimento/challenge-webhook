module Callback
  module Event
    module Build
      def self.call(params)
        event = params[:event]
        body = params[:body][event.to_sym]
        ::Event.new(event: event, body: body)
      end
    end
  end
end