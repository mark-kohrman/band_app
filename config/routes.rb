Rails.application.routes.draw do

  namespace :api do
    get "/bands" => "bands#index"
    get "bands/:id" => "bands#show"
    post "bands" => "bands#create"
    patch "bands/:id" => "bands#update"
  end
end
