require 'rails_helper'

RSpec.describe Callback::Organization::Build, type: :service do
  describe 'Organization build' do
    it '#call' do
      event = create(:event)
      params = { event: 'issue', body: { id: 2 } }
      build_event_with_organization = Callback::Organization::Build.call(event, params)

      expect(build_event_with_organization.organization.blank?).to_not be_truthy
    end
  end
end
