require 'rails_helper'

RSpec.describe V1::EventsController, type: :controller do

  # before(:each) do
  #   create(:event)
  # end
  #
  # describe '#index' do
  #   it 'return http status success' do
  #     create(:event)
  #     get :index
  #
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe '#issues' do
  #
  #   it 'returns events with specified number' do
  #     get :issues, params: { number: 2 }
  #
  #     json = JSON.parse(response.body, symbolize_names: true)
  #
  #     expect(json.first[:body][:number]).to eq(2)
  #   end
  #
  #   it 'do not return event with non-existent number' do
  #     get :issues, params: { number: 32313 }
  #     json = JSON.parse(response.body, symbolize_names: true)
  #
  #     expect(json).to be_blank
  #   end
  # end

end
