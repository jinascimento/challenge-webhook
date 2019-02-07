require 'rails_helper'

RSpec.describe Callback::Sender::Build, type: :service do
  describe 'Sender build' do
    it '#call' do
      event = create(:event)
      params = { event: 'issue', body: { id: 2 } }
      build_event_with_sender = Callback::Sender::Build.call(event, params)

      expect(build_event_with_sender.sender.blank?).to_not be_truthy
    end
  end
end
