require 'rails_helper'

RSpec.describe Callback::Event::Build, type: :service do
  describe 'Build Event' do
    it '#call' do
      params = { event: 'issue', body: {id: 2} }
      build_event = Callback::Event::Build.call(params)

      expect(build_event).to be_kind_of(Event)
    end

  end

end