require 'rails_helper'

RSpec.describe V1::WebhooksController, type: :controller do

  describe 'Create event in webhook' do

    xit '#callback' do
      headers = {
          "X-Hub-Signature": "sha1=c61b9dc45f7e1e03f5e9c7613525f6aecf80cfc7"
      }
      post :callback, { callback: { number: 1 } }, headers
      expect(response).to have_http_status(:success)
    end
  end
end
