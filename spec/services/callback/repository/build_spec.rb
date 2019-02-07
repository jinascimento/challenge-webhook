require 'rails_helper'

RSpec.describe Callback::Repository::Build, type: :service do
  describe 'Repository validator' do
    it '#call' do
      event = create(:event)
      params = { event: 'issue', body: { id: 2 } }
      build_event_with_repository = Callback::Repository::Build.call(event, params)

      expect(build_event_with_repository.repository.blank?).to_not be_truthy
    end
  end
end
