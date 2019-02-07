module V1
  class WebhooksController < ApplicationController
    before_action :check_secret

    def callback
      attributes = { event: event_name, body: params }
      callback = CallbackIssueService.new(attributes)
      return json_response(@events, :internal_server_error) unless callback.valid?

      callback.save
      json_response(@events, :created)
    end

    private

    def event_name
      event_payload = ''
      Event.events.keys.each do |event|
        event_payload = event if params.keys.include?(event)
      end
      event_payload
    end

  end
end