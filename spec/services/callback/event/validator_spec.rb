require 'rails_helper'

RSpec.describe Callback::Event::Validator, type: :service do
  describe 'Event validator' do
    context '#call' do
      it 'when event is valid' do
        event = build(:event)
        event_validator = Callback::Event::Validator.call(event)

        expect(event_validator).to be_truthy
      end

      it 'when event is not valid' do
        event = build(:event, body: '')
        event_validator = Callback::Event::Validator.call(event)

        expect(event_validator).to be_falsey
      end
    end

  end

end