require 'swagger_helper'


describe 'Events API' do
  path '/v1/events' do

    get 'List all events' do
      tags 'Events'
      consumes 'application/json'

      response '200', 'OK' do
        schema type: :array,
               items: {
               properties: {}}

        run_test!
      end

    end
  end

  path '/v1/issues/{number}/events' do
    get 'List all events of type issue' do
      tags 'Issues'
      consumes 'application/json'
      parameter name: :number, in: :path, type: :string

      response '200', 'OK' do
        schema type: :array,
               items: {
                 properties: {}}

        event = FactoryBot.create(:event)

        let(:number) { event.body["number"] }

        run_test!
      end

      response '404', 'Not Found' do
        schema type: :object,
               properties: {
                 errors: {
                   type: :object,
                   properties: {
                     message: { type: :string }
                  }
                 }
               }

        let(:number) { 0 }

        run_test!
      end

    end
  end


end

