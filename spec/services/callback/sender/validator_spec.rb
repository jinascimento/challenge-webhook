require 'rails_helper'

RSpec.describe Callback::Sender::Validator, type: :service do
  describe 'Sender validator' do
    context '#call' do
      it 'when sender is valid' do
        sender = build(:sender)
        sender_validator = Callback::Sender::Validator.call(sender)

        expect(sender_validator).to be_truthy
      end

      it 'when sender is not valid' do
        sender = build(:repository, body: '')
        sender_validator = Callback::Sender::Validator.call(sender)

        expect(sender_validator).to be_falsey
      end
    end

  end

end