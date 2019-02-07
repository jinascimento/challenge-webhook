require 'swagger_helper'

describe 'V1::WebhooksController' do

  # describe 'Create event in webhook' do
  #
  #   it '#callback' do
  #     headers = {
  #         "X-Hub-Signature": "sha1=c61b9dc45f7e1e03f5e9c7613525f6aecf80cfc7"
  #     }
  #     post :callback, { callback: { number: 1 } }, headers
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  path '/v1/callback' do

    post 'Create a event' do
      tags 'Webhook'
      security [signature: []]
      consumes 'application/json'
      parameter name: :event, in: :body, type: :object

      response '201', 'Created' do
        event = FactoryBot.build(:event, :issue)
        let('X-Hub-Signature') { 'sha1=' + OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha1'),
                                                                   SECRET['secret'], event.body.to_json) }

        let(:event) { event.body }

        run_test!
      end

      response '401', 'Unauthorized' do
        event = FactoryBot.build(:event)
        let(:event) { event }
        let('X-Hub-Signature') { 0 }

        run_test!
      end

      response '500', 'Internal Server Error' do
        event = FactoryBot.build(:event)
        let('X-Hub-Signature') { 'sha1=' + OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha1'),
                                                                   SECRET['secret'], event.body.to_json) }

        let(:event) { event.body }

        run_test!
      end

    end
  end
end
