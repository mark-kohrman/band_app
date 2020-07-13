Rails.application.routes.draw do

  namespace :api do
    get "/bands" => "bands#index"
    get "bands/:id" => "bands#show"
  end
end
