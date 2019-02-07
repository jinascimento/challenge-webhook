require 'rails_helper'

RSpec.describe Sender, type: :model do
  it 'is valid with valid attributes' do
    expect(build(:sender)).to be_valid
  end

  it 'is not valid without body' do
    expect(build(:sender, body: '')).to_not be_valid
  end

  describe 'Associations' do
    it { should belong_to(:event) }
  end
end
