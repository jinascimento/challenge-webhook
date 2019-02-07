require 'rails_helper'

RSpec.describe Organization, type: :model do
  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(build(:organization)).to be_valid
    end

    it 'is not valid without body' do
      expect(build(:organization, body: '')).to_not be_valid
    end

  end

  describe 'Associations' do
    it { should belong_to(:event) }
  end
end
