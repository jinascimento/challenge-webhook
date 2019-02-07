Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  api_version(module: 'V1', path: {value: 'v1'}) do
    post '/callback', to: 'webhooks#callback'
    resources :events, only: [:index]
    get '/issues/:number/events', to: 'events#issues'
  end
end
