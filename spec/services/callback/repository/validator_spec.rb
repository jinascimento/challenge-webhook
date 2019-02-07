require 'rails_helper'

RSpec.describe Callback::Repository::Validator, type: :service do
  describe 'Repository validator' do
    context '#call' do
      it 'when repository is valid' do
        repository = build(:repository)
        repository_validator = Callback::Repository::Validator.call(repository)

        expect(repository_validator).to be_truthy
      end

      it 'when repository is not valid' do
        repository = build(:repository, body: '')
        repository_validator = Callback::Repository::Validator.call(repository)

        expect(repository_validator).to be_falsey
      end
    end

  end

end