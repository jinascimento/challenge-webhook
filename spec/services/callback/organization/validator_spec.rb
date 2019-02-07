require 'rails_helper'

RSpec.describe Callback::Organization::Validator, type: :service do
  describe 'Organization validator' do
    context '#call' do
      it 'when organization is valid' do
        organization = build(:organization)
        organization_validator = Callback::Organization::Validator.call(organization)

        expect(organization_validator).to be_truthy
      end

      it 'when organization is not valid' do
        organization = build(:event, body: '')
        organization_validator = Callback::Organization::Validator.call(organization)

        expect(organization_validator).to be_falsey
      end
    end

  end

end