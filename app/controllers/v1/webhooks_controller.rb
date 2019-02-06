module V1
  class WebhooksController < ApplicationController
    before_action :check_secret

    def callback
      @webhook = Webhook.new(event: @event, body: webhook_params.to_json)
      save_callback
    end

    private

    def save_callback
      @webhook.save
    end

    def webhook_params
      event_payload = ''
      Webhook.events.keys.each do |event|
        @event = event
        event_payload = event if params.keys.include?(event)
      end
      params.require(event_payload.to_sym)
    end

  end
end