module V1
  class WebhooksController < ApplicationController
    before_action :check_secret

    def callback
      attributes = { event: event, body: params }
      callback = CallbackService.new(attributes)
      callback.save if callback.valid?
    end

    private

    def event
      event_payload = ''
      Event.events.keys.each do |event|
        event_payload = event if params.keys.include?(event)
      end
      event_payload
    end

  end
end