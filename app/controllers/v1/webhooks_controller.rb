module V1
  class WebhooksController < ApplicationController
    before_action :check_secret

    def callback
      attributes = { event: event_name, body: params }
      callback = CallbackIssueService.new(attributes)
      return render nothing: true, status: 500 unless callback.valid?

      callback.save

      render nothing: true, status: 200
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