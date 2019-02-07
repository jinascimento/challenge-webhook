require 'rails_helper'

RSpec.describe Event, type: :model do

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(create(:event)).to be_valid
    end

    it 'is not valid without body' do
      expect(build(:event, body: '')).to_not be_valid
    end

    it 'is not valid without event' do
      expect(build(:event, event: '')).to_not be_valid
    end
  end

  describe 'Scopes' do
    it 'issue_by_number' do
      create(:event, body: { number: 2 })
      result = Event.issue_by_number(2)

      expect(result.sample.body).to include("number" => 2)
    end
  end

  describe 'Associations' do
    it { should have_one(:sender) }
  end
end
